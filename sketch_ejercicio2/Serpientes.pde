class Serpientes{
  /*atributos*/
  private Serpiente serpiente;
  private ArrayList <Serpiente> serpientes;
  
  /*constructor sin parametros*/
  public Serpientes(){
    this.serpiente = new Serpiente(20,20,20,20);
    this.serpientes = new ArrayList<Serpiente>();
    this.serpientes.add(this.serpiente);
  }
  
  /*diseño de la serpiente*/
  public void dibujar(){
    for(int i = 0; i < serpientes.size(); i++){
      if(serpiente.direccion == "izquierda"){
         this.serpiente.dibujar(this.serpiente.posicion.x-this.serpiente.dimension.x*i, this.serpiente.posicion.y, this.serpiente.dimension.x, this.serpiente.dimension.y); 
      }
      if(serpiente.direccion == "derecha"){
        this.serpiente.dibujar(this.serpiente.posicion.x+this.serpiente.dimension.x*i, this.serpiente.posicion.y, this.serpiente.dimension.x, this.serpiente.dimension.y);
      }
      if(serpiente.direccion == "arriba"){
        this.serpiente.dibujar(this.serpiente.posicion.x, this.serpiente.posicion.y-this.serpiente.dimension.y*i, this.serpiente.dimension.x, this.serpiente.dimension.y);
      }
      if(serpiente.direccion == "abajo"){
        this.serpiente.dibujar(this.serpiente.posicion.x, this.serpiente.posicion.y+this.serpiente.dimension.y*i, this.serpiente.dimension.x, this.serpiente.dimension.y);
      }
    }
  }
  
  
  public void aumentarTamanio(){
    Serpiente auxiliar = new Serpiente(20,20,20,20);
    this.serpientes.add(auxiliar);
    auxiliar = new Serpiente();
  }
    
    
  /*movimiento de las serpientes contenidas dentro del arrayList*/
  public void mover(){
    this.serpiente.keyPressed();
  }
  
  /*colicion contra el lienzo*/
  public void colicion(){
    this.serpiente.colicion();
  }
}
