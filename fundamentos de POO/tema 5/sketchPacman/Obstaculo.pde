class Obstaculo{
  int x;
  int y;
  int w;
  int h;
  
  public Obstaculo(int _x, int _y, int _w, int _h){
    this.x = _x;
    this.y = _y;
    this.w = _w;
    this.h = _h;
  }
  
  /*dibuja los obstaculos*/
  void draw(){
    rect(x,y,w,h);
  }
}
