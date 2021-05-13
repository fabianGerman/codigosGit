class Tablero{
  private PVector posicion;
  private PVector dimension;
  
  public Tablero(float _x, float _y, float _w, float _h){
    this.posicion = new PVector();
    this.dimension = new PVector();
    this.posicion.add(_x,_y);
    this.dimension.add(_w,_h);
  }
  
  public void dibujar(){
    stroke(6,64,189);
    strokeWeight(4);
    fill(252,139,0);
    rect(posicion.x, posicion.y,dimension.x,dimension.y);
  }
}
