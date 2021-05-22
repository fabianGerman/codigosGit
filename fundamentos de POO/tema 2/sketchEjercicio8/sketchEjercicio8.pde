void setup(){
  size(400,400);
  background(255,255,255);
}

void draw(){
  //arriba
  circle(200,40,40);
  //abajo
  circle(200,360,40);
  //izquierda
  circle(50,200,40);
  circle(100,90,40);
  circle(100,310,40);
  line(200,40,100,90);
  line(100,90,50,200);
  line(50,200,100,310);
  line(100,310,200,360);
  //derecha
  circle(350,200,40);
  circle(300,90,40);
  circle(300,310,40);
  line(200,40,300,90);
  line(300,90,350,200);
  line(350,200,300,310);
  line(300,310,200,360);  
}
