class Canion{
  private PVector posicion;
  private PVector velocidad;
  private PVector aceleracion;
  private float radio, velocidadMaxima;
  
  public Canion(float _x, float _y){
    this.posicion = new PVector();
    this.velocidad = new PVector();
    this.aceleracion = new PVector();
    this.posicion.add(_x,_y);
    this.radio = 8;
    this.velocidadMaxima = 10;
  }
  
  public void mover(){
    this.velocidad.add(this.aceleracion);
    this.velocidad.limit(this.velocidadMaxima);
    this.posicion.add(velocidad);
    this.aceleracion.mult(0);
  }
  
  public void aplicarFuerza(PVector fuerza){
    this.aceleracion.add(fuerza);
  }
  
  public void dibujar(){
    stroke(0);
    strokeWeight(2);
    pushMatrix();
    translate(this.posicion.x, this.posicion.y);
    ellipse(0,0,this.radio*2,this.radio*2);
    popMatrix();
  }
  
  public void dibujar2(){
    pushMatrix();
    translate(posicion.x, posicion.y);
    rotate(angulo);
    rect(0,-5,50,10);
    popMatrix();
  }
}
