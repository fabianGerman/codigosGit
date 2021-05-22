class Cereza{
  int x;
  int y;
  int size;
  boolean eaten = false;
  
  public Cereza(int _x, int _y, int _size){
    this.x = _x;
    this.y = _y;
    this.size = _size;
  }
  
  /*dibuja las cerezas*/
  void draw(){
    if(!eaten){
      fill(#F00505);
      ellipse(x,y,size,size);
    }
  }
}
