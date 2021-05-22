/* posiciones cardinales*/
float x = 10; // x perteneciente al eje de las abscisa
float y = 10; // y perteneciente al eje de las ordenadas

void setup(){
  size(440,420); // tamaño de la ventana
}

void draw(){
  fill(250,173,7); // color de fondo
  rect(x,y,40,20); // figura geometrica de rectangulo
  /*por cada recorrido las variables x e y sumando sus valores para desplazarse en la pantalla*/
  x = x + 63; // se despalaza sobre el eje de las abscisas (derecha)
  y = y + 43; // se desplaza sobre el eje de las ordenadas (abajo)
  if(x > width){ // controla que el valor de x si es mayor al ancho el valor de x se reinicio a 10 
    x = 10;
  }
  if(y > height){ // controla que el valor de y si es mayor al largo el valor de y se reinicie a 10 
    y = 10;
  }
}
