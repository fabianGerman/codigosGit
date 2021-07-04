class Moneda {
  private PImage moneda; //imagen de la moneda
  private PVector posicion; // posicion de la moneda
  private PVector velocidad; // velocidad de la moneda
  private boolean agarra ;  // esta variable controlara si se agarro la moneda
  private boolean fuera_pantalla;  // la variable controla si la moneda se sale de la pantalla
  private int ancho;
  private int alto;
  private String collisionSide;


  public Moneda() {
    
    this.moneda= loadImage("data/moneda1.png");
    this.velocidad= new PVector(-4, 0);

    this.posicion= new PVector(1000, random(300, 450));
    ancho = 50;
    alto = 50;
  }

/*Metodos Accesores*/
  public boolean getFuera_pantalla() {
    return this.fuera_pantalla;
  }
  public boolean getAgarrar() {
    return this.agarra;
  }


  public PVector getPosicion() {
    return this.posicion;
  }
  
/*Zona de Metodos*/

  /*dibuja la Moneda*/
  public void display() {  //dibujo de la moneda
    moneda.resize(50, 50);

    image(moneda, this.posicion.x, this.posicion.y);
  }
  public void mover() { //movimiento de la moneda
    this.posicion.add(velocidad);
  }
  /*public void agarrar(Agente agente) { // condicion para agarra la moneda  
    if (agente.posicion.x>this.posicion.x && agente.posicion.x < this.posicion.x + 50 && agente.posicion.y > this.posicion.y && agente.posicion.y < this.posicion.y +50) { 
      agarra =true ;
    }
    if(){
    
    }
  }*/
  
  /*Colision del agente con la Moneda*/
  public void colisionarMoneda(Agente agente){
    float dx; 
    float dy;
    if(haciaLaDerecha == true){
      dx = (agente.getPosicion().x+agente.getAncho()/2) - (this.posicion.x + this.ancho/2);//distancia en x del agente con el cuadrado
      dy = (agente.getPosicion().y+agente.getAlto()/2) - (this.posicion.y + this.alto/2);//distancia en y del agente con el cuadrado
    }else{
      dx = (agente.getPosicion().x+6+agente.getAncho()/2) - (this.posicion.x + this.ancho/2);//distancia en x del agente con el cuadrado
      dy = (agente.getPosicion().y+agente.getAlto()/2) - (this.posicion.y + this.alto/2);//distancia en y del agente con el cuadrado
    }


  float combinedHalfWidths = agente.getAncho()/2 + this.ancho/2;
  float combinedHalfHeights = agente.getAlto()/2 + this.alto/2;

  if (abs(dx) < combinedHalfWidths){
    ////puede estar ocurriendo una colisión
    ////ahora checka en el eje y
    if (abs(dy) < combinedHalfHeights){
      ////excelente. se superponen
      //determina la superposición en cada eje
      float overlapX = combinedHalfWidths - abs(dx);
      float overlapY = combinedHalfHeights - abs(dy);
      
      //la colisión está en el eje con el más pequeño de la superposición
      if (overlapX >= overlapY){
         if (dy > 0){
          collisionSide = "top";
     //// mueve el rectángulo hacia atrás para eliminar la superposición antes de llamar a su pantalla para evitar dibujar objetos uno dentro del otro
          this.posicion.y += overlapY;

        }else{
          collisionSide = "bottom";
          this.posicion.y -= overlapY;
        }
        
      }else{
        if (dx > 0){
          collisionSide = "left";
          this.posicion.x += overlapX;

        }else{
          collisionSide = "right";
          this.posicion.x -= overlapX;
        }
      }
    } else {
      collisionSide = "none";
    }
  }else {
    collisionSide = "none";
  }
   
   line(agente.getPosicion().x,agente.getPosicion().y,this.posicion.x,this.posicion.y);     
  }
 
 /*Dependiendo de donde ocurrio la colision con la Moneda este metodo actuara*/
  void checkMoneda(){
    //// actualización para las colisiones de las plataformas
    if (collisionSide == "bottom"){
      agarra = true;
    }else if (collisionSide == "top" ){
      agarra = true;
    }else if (collisionSide == "right"){
      agarra = true;
    }else if (collisionSide == "left"){
      agarra = true;
    }
    if (collisionSide != "bottom"){
    }
  }

  /*Controla si la moneda sale de la Pantalla*/
  public void limitar() { // cuando sale de la pantalla las moneda
    if (posicion.x + 50 <0 ) {
      fuera_pantalla = false;
    }
  }
  

}
