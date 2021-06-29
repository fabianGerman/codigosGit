class Canion{
  /*atributos*/
  private PVector posicion;
  private PVector velocidad;
  private PVector aceleracion;
  private float radio, velocidadMaxima;
  
  /*constructor*/
  public Canion(float _x, float _y){
    this.posicion = new PVector();
    this.velocidad = new PVector();
    this.aceleracion = new PVector();
    this.posicion.add(_x,_y);
    this.radio = 8;
    this.velocidadMaxima = 10;
  }
  
  /*movimiennto de la bala de canion*/
  public void mover(){
    this.velocidad.add(this.aceleracion);
    this.velocidad.limit(this.velocidadMaxima);
    this.posicion.add(velocidad);
    this.aceleracion.mult(0);
  }
  
  /*este metodo curva la trayectoria de la vala del canion*/
  public void aplicarFuerza(PVector fuerza){
    this.aceleracion.add(fuerza);
  }
 
  /*dibuja la bala de canion*/
  public void dibujar(){
    stroke(0);
    strokeWeight(2);
    pushMatrix();
    translate(this.posicion.x, this.posicion.y);
    ellipse(0,0,this.radio*2,this.radio*2);
    popMatrix();
  }
  
}
