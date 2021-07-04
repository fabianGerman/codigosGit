class Cuadrado extends Obstaculo{//eredado la clase obstaculo 
  private float tamanio;//usado en gettanio
   
  public Cuadrado(float posX, float posY){
    this.posX = posX;
    this.posY = posY;
    this.tamanio = 50;
    this.sprite = loadImage("Resources/Metal_Slug/Cuadrado.jpg");
  }
  /*Metodos Accesores*/
  public float getPosX(){
    return this.posX;
  }
  public float getPosY(){
    return this.posY;
  } 
  public float getTamanio(){
    return this.tamanio;
  }   
  /*Zona de Metodos*/
  
  /*vizualiza el cuadrado*/
  public void display(){ //obstaculo de pinchos 
    //cuadradoY = y; //cordenas y obstaculo contruidos 
    imageMode(CENTER);
    this.sprite.resize(int(tamanio),int(tamanio));
    image(this.sprite,this.posX,this.posY);
    imageMode(CORNER);
    //strokeWeight(2);
    //stroke(150);
    //fill(0);
    //rect(this.posX, this.posY, tamanio, tamanio); 
  }
  
  
}
