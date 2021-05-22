float angulo = PI/4;
Canion canion;
Enemigo enemigo;
PVector posicion;
boolean corto = false;
void setup(){
  size(600,600);
  posicion = new PVector(50,height-50);
  canion = new Canion(posicion.x,posicion.y);
  enemigo = new Enemigo(530,530,50,false,canion);
}

void draw(){
  background(0);
  pushMatrix();
  translate(posicion.x, posicion.y);
  rotate(angulo);
  
  rect(0,-5,50,10);
  
  popMatrix();
  fill(255);
  triangle(50,560,0, height,100,height);
  enemigo.actualizar();
  enemigo.colicion(canion);
  if(corto)
  {
    PVector gravedad= new PVector(0,0.2);
    canion.aplicarFuerza(gravedad);
    canion.mover(); 
  }
  canion.dibujar();
  if(canion.posicion.y>height)
  {
    canion= new Canion(posicion.x, posicion.y);
    corto=false;
  }
}

void keyPressed()
{
  if(key=='s')
  {
    angulo+=.1;
    
  }
  if(key=='w')
  {
    angulo-=.1;
    
  }
  if (key==' ')
  {
    corto=true;
    PVector force= PVector.fromAngle(angulo);
    force.mult(10);
    canion.aplicarFuerza(force); 
  } 
}
