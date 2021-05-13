Triangulo triangulo, auxiliar;
Jugador jugador;
boolean gameOver = true;
boolean continuar = false;
char respuesta=' ';
void setup(){
  size(500,500);
 jugador = new Jugador();
}

void draw(){
  background(145, 163, 191);
  if(gameOver == true){
    triangulo = new Triangulo(random(100,400),random(100,350),random(100,350),random(180,350),random(100,350),random(100,350));
    
    triangulo.dibujar();
    auxiliar = triangulo;
  }else{
    textAlign(CENTER);
    textSize(14);
    fill(0);
    text("TECLA 'n' PARA PAUSAR, TECLA 's' PARA CONTINUAR",width/2+30, height/2-200);
    textSize(20);
    text("GAME OVER",width/2, height/2-180);
    auxiliar.dibujar();
    jugador.jugar(triangulo);
    jugador.setRespuesta(respuesta);
    textSize(20);
    fill(0);
    text("A-ISOSCELES   B-EQUILATER  C-ESCALENO",width/2, height/2+150);
    textSize(14);
    text("Puntuacion "+jugador.getPuntaje(),50,50);
    respuesta=' ';
  } 
}

void keyReleased(){
  if(key == 's'){
    gameOver = true;
  }
  if(key == 'n'){
    gameOver = false;
  }
  if(key == 'a'){
    respuesta = 'a';
  }
  if(key == 'b'){
    respuesta = 'b';
  }
  if(key == 'c'){
    respuesta = 'c';
  }
}
