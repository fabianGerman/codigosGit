Paleta paleta;
Pelota pelota;
Tablero tablero;
void setup(){
  size(800, 500);
  paleta = new Paleta(width,mouseY,20,90);
  pelota = new Pelota(width/2, height/2, 30);
  tablero = new Tablero(0,0,60,height);
}

void draw(){
  background(161, 154, 146);
  paleta();
  pelota();
  tablero();
}

public void paleta(){
  paleta.dibujar();
  paleta.colicion();
  paleta.rebote(pelota);
}

public void pelota(){
  pelota.dibujar();
  pelota.mover();
  pelota.colicion(paleta);
}

public void tablero(){
  tablero.dibujar(); 
}
