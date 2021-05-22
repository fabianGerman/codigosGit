float x1 = 400/2 , y1 = 80, altura = 80, radio = 80; // puntos de la elipce                              
float x2 = 0, y2 = 40; //puntos de la linea
boolean arriba = false, abajo = true;//controladores del desplazamiento de las formas
boolean posicionArriba=false, posicionAbajo =false;//controladores del posicionamiento de la elipce
void setup(){
  size(400,400);
}
void draw(){
  background(0); 
  fill(13,217,13);
  stroke(13,217,13);
  ellipse(x1,y1,radio,altura); 
  strokeWeight(3);
  //stroke(255,255,255);
  line(x2,y2,width,y2);
  if(y2 <= height && abajo == true){ //desplazamiento de las formas hacia abajo
    y1 = y1 + 1;
    y2 = y2 + 1;
    posicionArriba=true;
  }else{
    abajo = false;
    arriba = true;
    if(posicionArriba == true && posicionAbajo == false){
      y1 = y1 -90;
      posicionArriba = false;
      posicionAbajo = true;
    }
  }
  if(y2 >= 40 && arriba == true){
    y1 = y1 - 1;
    y2 = y2 - 1;
  }else{
    abajo = true;
    arriba = false;
    if(posicionAbajo == true && posicionArriba == true){
      y1 = y1 +90;
      posicionArriba=true;
      posicionAbajo=false;
    }
  }
}
