class Fondo{
  private PVector posicion;//posiciones usadas en el display de la imagen
  private PVector dimension;//dimensiones usadas en el display de la imagen
  private PImage sprite;//sprite usado para el requestImage
  
  public Fondo(){
    this.posicion = new PVector(0,0);
    this.dimension = new PVector();
    this.sprite = loadImage("Resources/Metal_Slug/fondo2.jpg");
  }
  
  /*Zona de Metodos*/
  
  /*dibuja el escenario*/
  public void display(){
    this.sprite.resize(1000,600);
    image(this.sprite,this.posicion.x,this.posicion.y);
  }
}
