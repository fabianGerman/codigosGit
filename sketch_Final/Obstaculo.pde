class Obstaculo {
  //atributos
  protected PImage sprite;
  protected float posX;//protected para su posterior uso en cuadrado y pincho 
  protected float posY;//protected para su posterior uso en cuadrado y pincho 
  protected float velocidad;//protected para su posterior uso en cuadrado y pincho 
  protected boolean fueraDePantalla;//protected para su posterior uso en cuadrado y pincho 
  //protected PImage sprite;
    
  public Obstaculo(){ 
    velocidad = 4;
    fueraDePantalla = false;
  }
  /*Metodos Accesores*/
  public boolean getFueraDePantalla(){
    return fueraDePantalla;
  }
  
  /*Zona de Metodos*/
  
  /*Mueve los Obstaculos(cuadrados y pinchos)*/
 public void mover(){ //determina la velocidad a la que los obstáculos se mueven a lo largo del eje x con
    posX -= velocidad;
  }
  /*Controla los obstaculos se salen de la Pantalla*/
  public void desaparecer(){
    if(posX < 0 - 50){
      fueraDePantalla = true;
    }
  }
}
