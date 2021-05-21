class Serpiente{
  
  /*atributos*/
  private PVector posicion;
  private PVector dimension;
  private float velocidad;
  private String direccion;
  
  /*constructor parametrizado*/
  public Serpiente(){
  
  }
  
 public Serpiente(float _x, float _y, float _w, float _h){
    this.posicion = new PVector();
    this.dimension = new PVector();
    this.posicion.add(_x,_y);
    this.dimension.add(_w,_h);
    this.velocidad = 3;
    this.direccion = "";
  }
  
  /*diseño de la serpiente*/
  public void dibujar(float _x, float _y, float _w, float _h){
    fill(255);
    rect(_x,_y,_w,_h);
  }
  
  /*movimiento de la serpiente*/
  public void keyPressed(){
    if(key == 'a'){
      this.posicion.x -= this.velocidad;
      this.direccion = "izquierda";
    }
    if(key == 'd'){
      this.posicion.x += this.velocidad;
      this.direccion = "derecha";
    }
    if(key == 'w'){
      this.posicion.y -= this.velocidad;
      this.direccion = "arriba";
    }
    if(key == 's'){
      this.posicion.y += this.velocidad;
      this.direccion = "abajo";
    }
  }
  
  /*colicion contra los bordes del lienzo
  */
  public void colicion(){
    if(this.posicion.x < 0 ){
      this.posicion.x = 0;
    }
    if(this.posicion.x + this.dimension.x >= width){
      this.posicion.x = width - this.dimension.x;
    }
    if(this.posicion.y < 0){
      this.posicion.y = 0;
    }
    if(this.posicion.y + this.dimension.y >= height){
      this.posicion.y = height - this.dimension.y;
    }
  }
}
