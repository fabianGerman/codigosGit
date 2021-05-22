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
 
  public PacMan(int _x, int _y, int _size) {
    this.x = _x;
    this.y = _y;
    this.size = _size;
  }
  
  /*dibujamos la forma del pacman*/
  void draw(){
    /*
    para la animacion de la boca se realize en una sola posicion
    el pacman se dibuja siempre en la posicion (0,0) y se traduce de acuerdo con la posicion en la pantalla
    dependiendo de la direccion del movimiento, se aplica la rotacion de la boca
    */
    /*
      pushMatrix guarda el sistema de coordenadas actual en la pila
    */
    pushMatrix();
    
    translate(x,y);
    rotate(radians(direccion));
    
    /*Forma del pacman*/
    fill(#FFE75A);
    strokeWeight(3);
    /*
    el metodo arc dibuja un arco a lo largo del borde exterior de una elipse definida por parametros a , b, c, d.
    Los parametros de inicio y paradas  deben estar en el orden de las agujas del reloj
    El septimo parametro puede ser opcional por defecto se pone PIE y representa el relleno del arco
    arc(a,b,c,d,star,stop, mode)
    a: coordenadas x
    b: coordenadas y
    c: ancho del arco la elipse
    d: altura del arco de la elipse
    star: angulo que inicia el arco, se deben definir como radiantes
    stop: angulo para detener el arco, se deben definir como radiantes
    */
    arc(0,0,size,size,radians(boca_cerrada), radians(360-boca_cerrada), PIE);
    
    /* ojos del pacman */
    fill(0);
    if(direccion == 180){ // con este if controlamos de que el ojo del pacman no quede debajo de la boca cuando cuambie de direccion
      ellipse(0+5,0+20,5,5);
    }else{
      ellipse(0+5,0-20,5,5);
    }
    x += direccionX;
    y += direccionY; 
    /*
      popMatrix restaura el sistema de coordenadas anteriores
    */
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
}
