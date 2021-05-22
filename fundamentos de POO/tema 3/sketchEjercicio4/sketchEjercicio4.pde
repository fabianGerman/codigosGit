int x1 = 0, y1 = 40;
int x2 = 40, y2 = 40; 
boolean horizontal = true;
void setup(){
  size(500,500);
  strokeWeight(9);
  fill(255,0,0);
  stroke(255,0,0);
  point(x2-3,y2-3);
  while(x2<height){//mientras el valor de la abscisa del segundo punto sea menor a la altura el bucle seguira repitiendose
    strokeWeight(1);
    fill(73,193,230);
    stroke(73,193,230);
    line(x1,y1,x2,y2);  
    if(horizontal == true){// cuando el valor booleano sea verdadero la linea sera horizontal
      x1 = x2;
      y1 = y2;
      y2 = y2+40;
      horizontal = false;
    }else{ //caso contrario la linea sera vertical
      x1 = x2;
      y1 = y2;
      x2 = x2+40;
      strokeWeight(9);
      fill(255,0,0);
      stroke(255,0,0);
      point(x2-3,y2-3);
      horizontal = true;
    }
  }
}
