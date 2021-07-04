class Blanco {//esta clase permite crear los blancos que salen en pantalla
  private PVector posicion; //posicion en el lienzo
  private PImage sprite;//valor que guardara la imagen
  private boolean bandera;
  
  
  //contructor perzonlisado
  public Blanco() {
    this.posicion = new PVector(930, random(300, 500));//el blanco tendra posiciones random para que le reulste mas dificil de dar
    this.sprite = loadImage("Resources/Metal_Slug/blanco.png");
    
  }
  /*Metodos Accesores*/
  public boolean getBandera(){
    return bandera;
  }
  public void setBandera(boolean band){
    this.bandera = band;
  }
  
  /*Zona de Metodos*/

  /*dibuja el blanco a disparar*/
  public void display() {
    sprite.resize(30, 40);//permite cambiar el tamaño de la imagen
    image(sprite, posicion.x, posicion.y);
    
  }
}
