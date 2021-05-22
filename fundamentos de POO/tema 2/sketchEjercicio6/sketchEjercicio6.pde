float x = 0;
float y = 0;
void setup(){
  size(400,400);
}

void draw(){
  x = random(width);
  y = random(height);
  strokeWeight(10);
  stroke(random(255),random(255), random(255));
  point(x,y);
}
