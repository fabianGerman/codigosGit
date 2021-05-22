class Enemigo{
  private PVector posicion;
  private int radio;
  private boolean golpe;
  private Canion canion;
  
  public Enemigo(float _x, float _y, int _radio, boolean _golpe, Canion _canion){
    this.posicion = new PVector();
    this.posicion.add(_x,_y);
    this.radio = _radio;
    this.golpe = false;
  }
  
  public void actualizar(){
    if(this.golpe){
      fill(255);
      //ellipse(this.posicion.x, this.posicion.y, this.radio*2, this.radio*2);
      rect(this.posicion.x, this.posicion.y, this.radio*2, this.radio*2);
    }else{
      dibujar(this.posicion.x, this.posicion.y, this.radio*2, 6);
    }
  }
  
  public void dibujar(float _x, float _y, int size, int numero){
    float valorGravitatorio = 255/numero;
    float pasos = size/numero;
    for(int i = 0; i < numero; i++){
      fill(i*valorGravitatorio);
      //ellipse(_x, _y, size-i*pasos, size-i-pasos);
      rect(_x, _y, size-i*pasos, size-i-pasos);
    }
  }
  
  public void colicion(Canion c){
    golpe = golpearObjetivo(c.posicion.x, c.posicion.y, c.radio, posicion.x, posicion.y, radio);
  }
  
  public boolean golpearObjetivo(float cx, float cy, float radio, float tx, float ty, float tr){
    float distX= cx-tx;
    float distY=cy-ty;
    float distance= sqrt((distX*distX)+ (distY*distY));  
    if(distance<=radio+tr){
        return true;   
    }  
    return false;
  }
}
