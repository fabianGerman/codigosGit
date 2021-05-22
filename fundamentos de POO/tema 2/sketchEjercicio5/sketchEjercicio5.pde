void setup(){
  size(500,500);
  background(8,90,212);
}

void draw(){
  stroke(12,212,8);
  fill(15,212,8);
  rect(220,40,50,400);
  rect(50,220,400,50);
  triangle(245,10,200,60,290,60);
  triangle(60,200,10,245,60,290);
  triangle(440,200,490,245,440,290);
  triangle(245,490,200,440,290,440);
  textSize(20);
  fill(245,245,245);
  text("N",290,50);
  text("O",60,180);
  text("S",290,460);
  text("E",460,200);
}
