void setup(){
  size(400,400);
}

void draw(){
  strokeWeight(5);
  //linea amariila
  stroke(236,245,66);
  line(0,0,width,height);
  //linea celeste
  stroke(66,242,245);
  line(0,height,width,0);
  //linea roja
  stroke(255,0,0);
  line(0,height/2,width,height/2);
  //linea azul
  stroke(0,0,255);
  line(width/2,0,width/2,height);
  //punto
  strokeWeight(10);
  stroke(0,0,0);
  point(width/2,height/2);
}
