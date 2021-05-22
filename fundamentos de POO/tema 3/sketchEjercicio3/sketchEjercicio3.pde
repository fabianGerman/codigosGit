float ancho = 40 , largo = 20;

void setup(){
  background(247,190,190);
  size(440,420);
  fill(255,0,0);
  for(int i = 10; i < width; i+= 63){ //la variablei se desplaza sobre el eje de las abscisas
    for(int j = 10; j < height; j+=43){//la variable j se desplaza sobre el eje de las ordenadas
      rect(i,j,ancho,largo);
    }
  }
}
