class Bala{
  private PVector posicion;//posicion de bala
  private PImage sprite;//sprite usado para bala
  private float vx;//usados para el movimiento de bala
  private float vy;//usados para el movimiento de bala
  private boolean direccion;//usados para el movimiento de bala
  private boolean disparo;//usados para el movimiento de bala
  private boolean limite;//Usado para que una vez la bala pase sea eliminada y no comsumir mas memoria
  private boolean bandera;
  
  public Bala(PVector _posicion, boolean _direccion){
    this.sprite = loadImage("Resources/Metal_Slug/RegAttack.png");
    this.posicion = new PVector(_posicion.x,_posicion.y);
    //this.posicion = _posicion;
    this.direccion = _direccion;
    this.vx = 7;
    this.vy = 7;
    disparo = true;
        
  }
  /*Metodos Accesores*/
  public boolean getLimite(){
      return this.limite;
  }  
  
  /*Zona de Metodos*/
  
  /*dibuja la Bala*/
  public void display(){
    image(this.sprite,this.posicion.x,this.posicion.y);
  }
  
  /*Movimiento de la Bala*/
  public void mover(){
    if(direccion == true){
      if(disparo == true){
        this.posicion.x += vx;
      }
    }else{
      if(disparo == true){
        this.posicion.x -= vx;
      }
    }    
  }

  public void limitarDisparo(){
    if(posicion.x > width){
      limite = true;
    }
    if(posicion.x < 0){
      limite = true;
    }
  }  
  
  /*Colision de la Bala con el Blanco*/
  public boolean colicion(ArrayList<Blanco> b) { //colicion de la bala con el blanco
    
    for (int i = 0 ; i < b.size(); i++) {//recorre la lista de blanco
      //if (direccion == true) {
        if (posicion.x >= b.get(i).posicion.x && posicion.y >= b.get(i).posicion.y && posicion.y <= b.get(i).posicion.y+40) { //si la posicion de la bala es mayor o igual a la del blanco cambia el valor de la bandera a verdadero
          bandera = true;
          b.get(i).setBandera(bandera);
        }
      }
    //}
    return bandera;
  }
}
