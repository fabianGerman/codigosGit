import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer audioFondo,muerte;

Agente agente;
Fondo fondo;
ArrayList <Bala> balas;
ArrayList <Pincho> pinchos;
ArrayList <Cuadrado> cuadrados;
ArrayList <Moneda> moneda;
ArrayList <Blanco> blanco;
//Variables globales
int cronometro = 0; //utilizado para cronometrar obstaculos, basicamente el tiempo en el que se mueve
int contadorMuerte = 0; //Este es para cronometrar las muertes y tambien resetea los obstaculos
int PuntajeMasAlto = 0; //Este solo muestra la puntuacion mas alta
int desvanecer = 0; //para que desaparezca en oscuridad cuando el jugador gana
int extra = 0;//utiliza para darles puntos al blanco
PImage imagenFondo;
int cant_moneda;
int cantBlancos;


Plataformas base;
void setup(){
  size(1000,600); 
  agente = new Agente();
  balas = new ArrayList();
  
  fondo = new Fondo();
  
  base = new Plataformas();
  //minim = new Minim(this);
  //musica_fondo = minim.loadFile("Resources/Music/Final_Attack.mp3");
  pinchos = new ArrayList();
  cuadrados = new ArrayList();
  moneda= new ArrayList();
  blanco = new ArrayList();
  //blanco.add(new Blanco());
  
  minim = new Minim(this);
  audioFondo = minim.loadFile("Resources/Music/fondo.mp3");
  audioFondo.setGain(-10);
  audioFondo.play();
  muerte = minim.loadFile("Resources/Music/muerte.mp3");
}

void draw(){
  frameRate(60);
  background(200);
  //musica_fondo.play();
  fondo.display();
  base.display();
  //enemigo.get(0).display();
  agente.display();
  agente.mover();
  agente.colisionar(base);
  agente.checkPlataforma();
  agente.colisionarBordeIzquierdo();
  

 
  
  //visualiza y mueve la bala
  for(int i = 0; i < balas.size(); i++){
    balas.get(i).display();
    balas.get(i).mover();
    balas.get(i).limitarDisparo();   
  }
  //elimina las balas si salen de la pantalla
  for(int j = 0; j < balas.size(); j++){
     if(balas.get(j).getLimite() == true){
        balas.remove(j);    
     }
  }
  //elimina las balas si colisionan con un enemigo     
  for(int i = 0; i < balas.size(); i++){
    if(balas.get(i).colicion(blanco) == true){//<--metodo de colicion...si la colicion es verdadera entra y borra la bala y el enemigo
        balas.remove(i);
        cantBlancos++;//puntos por acertar a un blanco
        extra++;// aumenta para sumarse al mejor puntaje puntaje 
      } 
  }   
  for(int i = 0; i < blanco.size(); i++){
    if(blanco.get(i).getBandera() == true){//<--metodo de colicion...si la colicion es verdadera entra y borra la bala y el enemigo
        blanco.remove(i);
      } 
  }
  
  //println("enemigos: "+enemigo.size());
  //println("balas: "+balas.size());
    //background
  
  
  //obstaculos
  
  AparicionDeObstaculos(pinchos,cuadrados); //genera obstaculos (segun el tiempo del cronometro)
  
  //visualiza y mueve los pinchos
  for(int i = 0; i < pinchos.size(); i++){
    pinchos.get(i).display();
    pinchos.get(i).mover(); 
    pinchos.get(i).desaparecer();
  }  
  //visualiza y mueve los cuadrados
  for(int j = 0; j < cuadrados.size(); j++){
     cuadrados.get(j).display();
     cuadrados.get(j).mover(); 
     cuadrados.get(j).desaparecer();
  }
  // visualiza , mueve y controla la moneda 
  for(int j = 0; j < moneda.size(); j++){
     moneda.get(j).display();
    moneda.get(j).mover(); 
     moneda.get(j).limitar();
     moneda.get(j).colisionarMoneda(agente);
     moneda.get(j).checkMoneda();
  }
  // elimina la moneda si sale la pantalla
  for(int j = 0; j < moneda.size(); j++){
     if(moneda.get(j).getFuera_pantalla() == true ){
       moneda.remove(j);
     }
  }
  //elimina las moneda si la agarra y cuenta
    for(int j = 0; j < moneda.size(); j++){
     if(moneda.get(j).getAgarrar() == true ){
       moneda.remove(j); 
       cant_moneda++; //
     }
  }
  
  //println(moneda.size());      
  
 
  //println("pinchos: "+pinchos.size());
  //println("cuadrados: "+cuadrados.size());
  
  //elimina los pinchos si salen de la pantalla
  for(int h = 0; h < pinchos.size(); h++){
     if(pinchos.get(h).getFueraDePantalla() == true){
      pinchos.remove(h);
    }
  }
  //elimina los cuadrados si salen de la pantalla
  for(int k = 0; k < cuadrados.size(); k++){
     if(cuadrados.get(k).getFueraDePantalla() == true){
      cuadrados.remove(k);
    }
  }  
  //Detecta si hay colision con los cuadrados
  for (int i = 0; i < cuadrados.size(); ++i) {
    agente.colisionar(cuadrados.get(i));
    agente.checkPlatformaCuadrado();
  }  
  //Detecta la colision con los pinchos
  for (int i = 0; i < pinchos.size(); ++i) {
    agente.colisionar(pinchos.get(i));
  }

  //vizualiza los blancos
   for(int i = 0; i < blanco.size(); i++){
    blanco.get(i).display();   
  }
  
  //cronometro, marcador y pantalla de control
  cronometro();
  marcador(); 
  Controles();
  bonus();//genera los blancos
}

void cronometro(){ // cronometro utilizado para determinar la puntuación y la aparición de obstáculos
// Nota para mí mismo: la duración de la canción es 12000 en el cronometro 
  cronometro += 1;
  //println(cronometro); //para ver en donde estamos (ayudarme de esto para agregar obstaculos)---------------------
}

void reset(){ //restablece el juego al principio
  //muerte.rewind();
  muerte.play();
  delay(1000);
  //resetea el audio
  audioFondo.rewind();
  //resetea al cronometro
  cronometro = 0;
  //resetea los obtaculos
  cuadrados.clear();
  pinchos.clear();
  blanco.clear();
  moneda.clear();
  
  base.setPosicion(new PVector(200,height-50));
  //resetea la posicion del agente"
  agente.setPosicion(new PVector(width/2 - 200,height-100));
  //incremente el contador de muertos
  contadorMuerte += 1;
  //reseta el desvanecer
  desvanecer = 0;
  //resetea la puntuacion
  cantBlancos = 0;
  cant_moneda = 0;
}

void marcador(){ //registra la distancia mas larga
  if(cronometro > PuntajeMasAlto){
    PuntajeMasAlto = cronometro;
  }
  
  textAlign(CENTER);
  textSize(35);
  fill(255);
  text("Mejor Puntaje: "+PuntajeMasAlto/60, 800, 50); // highscore se divide por 60, por lo que cada segundo = 1 punto
  //contador de muertes 
  fill(255);
  textSize(45);
  text(contadorMuerte, 500, 60);
  textSize(30);
  text("Monedas: " +cant_moneda,800,90);//contando de cuanto moneda agarro
  textSize(30);
  text("Blancos: " +cantBlancos,800,120);
  }

void Controles(){
  /// muestra los controles hasta que el temporizador llega a 250, es decir
  //hasta encontrar el primer obstáculo
  if(cronometro < 250){
    text("Movimiento: A , D",150,40);
    text("Jump: W",150,80);
    text("Shoot: J",150,120);
  }else{ // muestra la puntuación actual
    textAlign(CENTER);
    textSize(35);
    fill(255);
    text("Puntuación actual: "+cronometro/60, 200, 50); 
  }
}


void JuegoCompletado(){
  // se desvanece a negro 
  noStroke();
  fill(0, 0, 0, desvanecer);
  rectMode(CENTER);
  rect(500, 300, 1000, 600);
  desvanecer += 1;
  //Ganaste en texto
  textAlign(CENTER);
  textSize(50);
  fill(random(255), random(255), random(255));
  text("Ganaste!", 500, 300);
}

void bonus() {

  // utilizando el cronometro, le doy un tiempo para que se vizualice en el lienzo
  if (cronometro>100 && cronometro<102) {//crea un nuevo blanco si cumple la condicion del cronometro
    blanco.add(new Blanco());
  }
  if(cronometro>300 && cronometro<302){//elimina el  blanco si cumple la condicion del cronometro// osea si pasa determinado tiempo
    if(blanco.size() != 0){
      blanco.remove(0);      
    }

  }
  if (cronometro>400 && cronometro<402) {
    blanco.add(new Blanco());
  }
  if(cronometro>600 && cronometro<602){
    if(blanco.size() != 0){
      blanco.remove(0);      
    }
  }
  if (cronometro>800 && cronometro<802) {
    blanco.add(new Blanco());
  }
  if(cronometro>1000 && cronometro<1002){
    if(blanco.size() != 0){
      blanco.remove(0);      
    }
  }
  if (cronometro>1400 && cronometro<1402) {
    blanco.add(new Blanco());
  }
  if(cronometro>1600 && cronometro<1602){
    if(blanco.size() != 0){
      blanco.remove(0);      
    }
  }
  if(cronometro>1900 && cronometro<1902){
    blanco.add(new Blanco());
  }
  if(cronometro>1960 && cronometro<1962){
    if(blanco.size() != 0){
      blanco.remove(0);      
    }
  }
 
  if (cronometro>2100 && cronometro<2102) {
    blanco.add(new Blanco());
  }
  if(cronometro>2300 && cronometro<2302){
    if(blanco.size() != 0){
      blanco.remove(0);      
    }
  }
  if (cronometro>2900 && cronometro<2902) {
    blanco.add(new Blanco());
  }
  if(cronometro>3300 && cronometro<3302){
    if(blanco.size() != 0){
      blanco.remove(0);      
    }
  }
  if(cronometro>3400 && cronometro<3402){
    blanco.add(new Blanco());
  }
  if(cronometro>3600 && cronometro<3602){
    if(blanco.size() != 0){
      blanco.remove(0);      
    }
  }
   if (cronometro>3700 && cronometro<3702) {
    blanco.add(new Blanco());
  }
  if(cronometro>4200 && cronometro<4202){
    if(blanco.size() != 0){
      blanco.remove(0);      
    }
  }
  if(cronometro>4400 && cronometro<4402){
    blanco.add(new Blanco());
  }
  if(cronometro>4500 && cronometro<4502){
    if(blanco.size() != 0){
      blanco.remove(0);      
    }
  }
   if (cronometro>4600 && cronometro<4602) {
    blanco.add(new Blanco());
  }
  if(cronometro>4900 && cronometro<4902){
    if(blanco.size() != 0){
      blanco.remove(0);      
    }
  }
   if (cronometro>5500 && cronometro<5502) {
    blanco.add(new Blanco());
  }
  if(cronometro>5700 && cronometro<5702){
    if(blanco.size() != 0){
      blanco.remove(0);      
    }
  }
   if (cronometro>6100 && cronometro<6102) {
    blanco.add(new Blanco());
  }
  if(cronometro>6400 && cronometro<6402){
    if(blanco.size() != 0){
      blanco.remove(0);      
    }
  }
  if(cronometro>7000 && cronometro<7002){
    blanco.add(new Blanco());
  }
  if(cronometro>7200 && cronometro<7202){
    if(blanco.size() != 0){
      blanco.remove(0);      
    }
  }
  if(cronometro>7400 && cronometro<7402){
    blanco.add(new Blanco());
  }
  if(cronometro>7600 && cronometro<7602){
    if(blanco.size() != 0){
      blanco.remove(0);      
    }
  }
  if(cronometro>8000 && cronometro<8002){
    blanco.add(new Blanco());
  }
  if(cronometro>8400 && cronometro<8402){
    if(blanco.size() != 0){
      blanco.remove(0);      
    }
  }
  if(cronometro>8700 && cronometro<8702){
    blanco.add(new Blanco());
  }
  if(cronometro>8900 && cronometro<8902){
    if(blanco.size() != 0){
      blanco.remove(0);      
    }
  }
  if(cronometro>9100 && cronometro<9102){
    blanco.add(new Blanco());
  }
  if(cronometro>9400 && cronometro<9402){
    if(blanco.size() != 0){
      blanco.remove(0);      
    }
  }
  if(cronometro>9600 && cronometro<9602){
    blanco.add(new Blanco());
  }
  if(cronometro>9800 && cronometro<9802){
    if(blanco.size() != 0){
      blanco.remove(0);      
    }
  }
  if(cronometro>10400 && cronometro<10402){
   blanco.add(new Blanco());
  }
  if(cronometro>10600 && cronometro<10602){
    if(blanco.size() != 0){
      blanco.remove(0);      
    }
  }
  if(cronometro>11600 && cronometro<11602){
    blanco.add(new Blanco());
  }
  if(cronometro>11870 && cronometro<11872){
    if(blanco.size() != 0){
      blanco.remove(0);      
    }
  }
}
