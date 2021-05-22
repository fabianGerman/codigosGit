class Jugador{
  private char respuesta;
  private int puntaje;
  
  public Jugador(){
    this.respuesta = ' '; 
    this.puntaje = 0;
  }
  public char getRespuesta(){
    return respuesta;
  }
  
  public void setRespuesta(char respuesta){
    this.respuesta = respuesta;
  }
  
  public int getPuntaje(){
    return puntaje;
  }
  
  public void setPuntaje(int puntaje){
    this.puntaje = puntaje;
  }
  
  public void jugar(Triangulo triangulo){
    if(triangulo.esIsosceles() && this.respuesta == 'a'){
      this.puntaje ++;
    }
    if(triangulo.esEquilatero() && this.respuesta == 'b'){
      this.puntaje ++;
    }
    if(triangulo.esEscaleno() && this.respuesta == 'c'){
      this.puntaje++;
    }
  }
}
