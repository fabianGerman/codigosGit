class Comida{
  /*atributos*/
  private int id;
  private PVector posicion;
  private PVector dimension;
  private color colorRectangulo;
  private int ancho;
  private int alto;
  private float resultado;
  private boolean bandera = false;
  
  /*constructor sin parametros*/
  public Comida(){
    this.posicion = new PVector();
    this.dimension = new PVector();
  }
  /** Constructor parametrizado */
  public Comida(int id, PVector posicion, color colorRectangulo, PVector dimension,  float _r){
    this.id = id;
    this.posicion = posicion;
    this.dimension = dimension;
    this.colorRectangulo = colorRectangulo;
    this.ancho = ancho;
    this.alto = alto;
    this.resultado = _r;
  }
  
  /** Métodos */
  
  /*dibuja la fruta*/
  public void dibujar(){
    if(!bandera){//si bandera es verdadero dibuja la fruta
      fill(this.colorRectangulo);
      text(this.resultado,this.posicion.x,this.posicion.y-10);
      rect(this.posicion.x,this.posicion.y,this.dimension.x,this.dimension.y);
    }
    
  }
  
  /*colicion entre la furta y la serpiente 
  consite consite en que si la seriente coliciona en alguno de sus lados 
  el valor booleando bandera cambia a falso
  */
  public boolean colicion(Serpiente serpiente){
    boolean bandera = true;
    if(this.posicion.x > serpiente.posicion.x + serpiente.dimension.x){//si la posicion de la fruta es mayor a la suma de la posicion y el ancho de la seriente
      bandera = false;
    }
    if(this.posicion.x + this.dimension.x < serpiente.posicion.x){//si la posicion x mas el ancho de la fruta es mehor que la posicion x de la serpiente
      bandera = false;
    }
    if(this.posicion.y > serpiente.posicion.y + serpiente.dimension.y){// si la posicion y de la fruta es mayor que la posicion y y la altura de la serpiente
      bandera = false;
    }
    if(this.posicion.y + dimension.y < serpiente.posicion.y){// si la posicion y , mas la altura es menor que la posicion y de la serpiente
      bandera = false;
    }
    return bandera;
  }
}
