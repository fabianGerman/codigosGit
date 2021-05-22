PacMan pacman;
ArrayList<Obstaculo> obstaculos = new ArrayList<Obstaculo>();
ArrayList<Cereza> cerezas = new ArrayList<Cereza>();

void setup(){
  size(800,600);
  inicializarObstaculos();
  inicializarCerezas();
  pacman = new PacMan(120,150,100, obstaculos, cerezas);
}

void inicializarObstaculos(){
  obstaculos.add(new Obstaculo(0,0,width,50));
  obstaculos.add(new Obstaculo(0,0,50,height));
  obstaculos.add(new Obstaculo(0,height-50,width,height));
  obstaculos.add(new Obstaculo(width-50,0,width,height));
  obstaculos.add(new Obstaculo(200,0,50,400));
  obstaculos.add(new Obstaculo(400,350,50,200));
  obstaculos.add(new Obstaculo(600,200,width,50));
}

void inicializarCerezas(){
  cerezas.add(new Cereza(120,500,50));
  cerezas.add(new Cereza(400,150,50));
  cerezas.add(new Cereza(600,400,50));
  cerezas.add(new Cereza(700,100,50));
}

void draw(){
  background(255);
  pacman.update();
  pacman.draw();
  for(Obstaculo o : obstaculos){
    o.draw();
  }
  for(Cereza c : cerezas){
    c.draw();
  }
}

void keyPressed(){
  if(key == 'r'){
    inicializarCerezas();
  }
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
