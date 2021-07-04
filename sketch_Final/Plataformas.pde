class Plataformas {//usada para el plataforma estatica en donde esta el personaje
  private PVector posicion;//posicion en la que se va a dibujar
  private float alto;//alto del rect
  private float ancho; //ancho del rect
  private PImage sprite;
  private int xframe;
  private int yframe;
  
  
  Plataformas() {
    sprite = loadImage("Resources/Metal_Slug/Piso.png");
    xframe = 0;
    yframe = 0;
    ancho=500;
    alto=50;
    //this.posicion = new PVector(0,height-alto);
    this.posicion = new PVector(200,height-alto);
  }
  
  /*Metodos Accesores*/
  public PVector getPosicion(){
    return this.posicion;
  }
  
  public float getAlto(){
    return alto;
  }
  
  public float getAncho(){
    return ancho;
  }
  
  public void setPosicion(PVector posicion){
    this.posicion = posicion;
  }
  
  /*Zona de Metodos*/
  
  /* dibuja la Plataforma*/
  void display() {
    //rectMode(CORNER);
    //fill(0);
    //rect(this.posicion.x, this.posicion.y, ancho, alto);
    sprite.resize(1000,50);
    image(sprite.get(xframe,yframe,int(ancho),int(alto)),int(posicion.x),int(posicion.y));
  }
}
