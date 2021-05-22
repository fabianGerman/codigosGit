PacMan pacman;

void setup(){
  size(800,600);
  pacman = new PacMan(120,150,100);
}

void draw(){
  background(255);
  pacman.update();
  pacman.draw();
}

void keyPressed(){
  if(keyCode == UP || key == 'w'){
    pacman.moverArriba();
  }
  if(keyCode == DOWN || key == 's'){
    pacman.moverAbajo();
  }
  if(keyCode == RIGHT || key == 'd'){
    pacman.moverDerecha();
  }
  if(keyCode == LEFT || key == 'a'){
    pacman.moverIzquierda();
  }
  if(key == ' '){
    pacman.stop();
  }
}
