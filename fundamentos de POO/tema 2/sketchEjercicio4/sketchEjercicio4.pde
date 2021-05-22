void setup(){
  size(400,400);
}

void draw(){
 strokeWeight(5);
  /*linea*/
  stroke(0,0,255);
  line(0,height/2,width,height/2);
  /*circulo rojo*/
  stroke(255,0,0);
  fill(255,0,0);
  circle(width/2,height/2,60);
  /*circulo verde*/
  stroke(15,212,8);
  fill(15,212,8);
  circle(350,height/2,60);
  /*crculo amarillo*/
  stroke(236,245,86);
  fill(236,245,86);
  circle(50,height/2,60);
}
