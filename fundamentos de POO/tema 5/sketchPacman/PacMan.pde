class PacMan{
  /*posicion y tamaño del objeto*/
  int x;
  int y;
  int size;
  /*estado de la boca (abierta o cerrada)*/
  boolean boca = true; //isOpening
  /*direccion de movimiento*/
  float direccion = 80;
  /*posiciones maxima y minima de la boca*/
  float boca_cerrada = 0;
  float boca_abierta = 45;
  /*apertura de la boca*/
  int apertura_boca = 15;
  float posicion_apertura = boca_abierta / apertura_boca;
  /*vectores de movimientos*/
  float direccionX = 0;
  float direccionY = 0;
  /*cantidad de pixeles por cada movimiento*/
  float pasos = 5;
  
  ArrayList <Obstaculo> obstaculos;
  ArrayList <Cereza> cerezas;
 
  public PacMan(int _x, int _y, int _size, ArrayList<Obstaculo> _obstaculos, ArrayList<Cereza> _cerezas) {
    this.x = _x;
    this.y = _y;
    this.size = _size;
    this.obstaculos = _obstaculos;
    this.cerezas = _cerezas;
  }
  
  /*dibujamos la forma del pacman*/
  void draw(){
    /*
    para la animacion de la boca se realize en una sola posicion
    el pacman se dibuja siempre en la posicion (0,0) y se traduce de acuerdo con la posicion en la pantalla
    dependiendo de la direccion del movimiento, se aplica la rotacion de la boca
    */
    pushMatrix();
    
    translate(x,y);
    rotate(radians(direccion));
    
    /*Forma del pacman*/
    fill(#FFE75A);
    strokeWeight(3);
    arc(0,0,size,size,radians(boca_cerrada), radians(360-boca_cerrada), PIE);
    
    /* ojos del pacman */
    fill(0);
    if(direccion == 180){ // con este if controlamos de que el ojo del pacman no quede debajo de la boca cuando cuambie de direccion
      ellipse(0+5,0+20,5,5);
    }else{
      ellipse(0+5,0-20,5,5);
    }
    popMatrix();
  }
  
  void update(){
    if(boca){
      boca_cerrada += posicion_apertura;
    }else{
      boca_cerrada -= posicion_apertura;
    }
    /*cambia el estado de la boca a cerrada cuando cuando la variable
    boca_cerrada es mayor o igual a la boca posicion_apertura*/
    if(boca && boca_cerrada >= boca_abierta){
      boca = false;
    }
    if(!boca && boca_cerrada <= 0){
      boca = true;
    }
    if(colicion(x + direccionX, y + direccionY)){
      stop();
    }else{
      x += direccionX;
      y += direccionY;  
    }
    /*come las frutas a su alcance*/
    eat();
  }
  /*movimeintos del pacman*/
  void moverArriba(){
    direccion = 270;
    direccionX = 0;
    direccionY = -pasos;
  }
  
  void moverAbajo(){
    direccion = 90;
    direccionX = 0;
    direccionY = pasos;
  }
  
  void moverIzquierda(){
    direccion = 180;
    direccionX = -pasos;
    direccionY = 0;
  }
  
  void moverDerecha(){
    direccion= 0;
    direccionX = pasos;
    direccionY = 0;
  }
  
  void stop(){
    direccionX = 0;
    direccionY = 0;
  }
  
  /*este metodo permite que el pacman al colisionar con un obstaculo no pueda pasar por ensima de el
  en otras palabras si los valoes x e y estan en la misma posicion del obstaculos el pacman se dentendra en la direccion que esta llendo
  */
  boolean colicion(float _x, float _y){
    for(Obstaculo o : obstaculos){
      if((_x + (size/2) >= o.x) && (_x - (size/2) <= o.x + o.w) && (_y + (size/2) >= o.y) && (_y - (size/2) <= o.y + o.h)){
        return true;
      }
    }
    return false;
  }
  
  /*similar al de colicion pero esta vez si el pacman choca con la cereza esta desaparece y el pacman puede seguir su movimiento sin detenerse*/
  void eat(){
     for(Cereza c : cerezas){
       if((x + (size/2) >= (c.x - (c.size/2))) && (x - (size/2) <= c.x + (c.size/2)) && (y + (size/2) >= (c.y - (c.size/2))) && (y - (size/2) <= c.y + (c.size/2))){
         c.eaten = true;
       }
     }   
  }
}
