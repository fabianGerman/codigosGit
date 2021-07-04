class Pincho extends Obstaculo{
  //Hereda de obtaculo posX y posY
 
  
  
  public Pincho(float posX, float posY){
    this.posX = posX; //respectivos valores heredados
    this.posY = posY;//respectivos valores heredados
    this.sprite = loadImage("Resources/Metal_Slug/pinchito.png");
  }
 /*Metodos Accesores*/
  public float getPosX(){
    return this.posX;
  }
  public float getPosY(){
    return this.posY;
  }   
  
  /*Zona de Metodos*/
  
  /*dibuja el pincho*/
  public void display(){ //obstaculo de pinchos 
    //posY = posY+20; //Cordenada y obstaculo contruidos
    //rectMode(CORNER);
    //strokeWeight(2);
    //stroke(150);
    //fill(0);
    //triangle(this.posX, this.posY, this.posX+30, this.posY, this.posX+15, this.posY-50);
    this.sprite.resize(30,50);
    image(this.sprite,this.posX,this.posY-50);
  }
  
  
}
