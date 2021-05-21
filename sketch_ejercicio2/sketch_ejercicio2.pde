Serpientes serpientes;
Comida comida ,comida1;
Comidas comidas;
Tablero tablero;
void setup(){
  size(500,500);
  this.tablero = new Tablero();
  
}

void draw(){
  background(0);
  tablero.puntaje();
  //tablero.tablero();
  this.tablero.inicializarSerpiente();
  this.tablero.inicializarComida();
  this.tablero.comerFruta();
}
