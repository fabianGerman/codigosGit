/*
int x=0, y=0;
int vx=5,vy=5;

void setup(){
  size(700,400);
  //fill(255,255,0);
}

void draw(){
  background(0,100,255);
  ellipse(x,y,50,50);
  if(x>width){
    vx=-vx;
  }
  if(y>height){
    vy=-vy;
  }
  x=x+vx;
  y=y+vy;
}
*/

color countColor = 1;
void setup(){
  size(1200,600);
  background(255,0,0);
}

void draw(){
  for(int i=1; i<=10;i++){
    fill(countColor);
    countColor=countColor+40;
    rect(i*100,100,i*5,50);
  }
}
/*
float x,x2;
void setup(){
  size(800,600);
  x=0;
  x2=10;
}

void draw(){
  while(x<width){
    if(x%2==0){
      rect(x,100,50,50);
    }else{
      ellipse(x+25,125,50,50);
    }
    x+=65;
  }
  for(int i = 0; i<=5;i++){
    fill(255,0,0);
    rect(x2+i*60,200,50,50);
  }
}*/

int x=0, y=0, vx=5, yv=5;
/*
void setup(){
  size(800,600);
  fill(255,255,0);
}

void draw(){
  background(0,100,255);
  ellipse(x,y,50,50);
  if(x>width){
   vx=-vx;
  }
  if(y>height){
    yv=-yv;
  }
  x=x+vx;
  y=y+yv;
}*/
