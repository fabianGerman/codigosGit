int x1=0, y1=100, x2=600, y2=100;
int x3=30, y3=75; 
void setup(){
  size(600,600);
  do{
    strokeWeight(3);
    stroke(52,229,235);
    line(x1,y1,x2,y2);
    y1 = y1 + 100;
    y2 = y2 + 100;
    do{
      fill(random(255),random(255),random(255));
      stroke(0);
      circle(x3, y3, 50);
      x3 = x3+60;
    }while(x3 < width);
    x3 = 30;
    y3 = y3 + 200;
  }while(y1 < height);
}
