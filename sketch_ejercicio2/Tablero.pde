class Tablero{
  private Comidas comidas;
  private Serpientes serpientes;
  private String operacion;
  private float resultado;
  private boolean continuar;
  
  public Tablero(){
    this.comidas = new Comidas();
    this.serpientes = new Serpientes();
    this.operacion = "0+1= ";
    this.resultado = 1;
    this.continuar = false;
    inicializarComida();
    print("tamanio ",serpientes.serpientes.size());
  }
  
  public void inicializarSerpiente(){
    this.serpientes.dibujar();
    this.serpientes.mover();
    this.serpientes.colicion();
  }
  
  public void inicializarComida(){
    this.comidas.dibujar();
  }
  
  public void comerFruta(){
    if(comidas.colicion(this.serpientes.serpiente)){
      if(this.comidas.eliminarFruta(this.resultado)){
        this.continuar=true;
        tablero(); 
        print("tamanio ",serpientes.serpientes.size());
        serpientes.aumentarTamanio();
      }else{
        if(this.comidas.comidas.size() == 0){
          fill(255);
          textSize(15);
          text("juego terminado fruta", width/2, height/2);
          stop();
        }else{
          fill(255);
          textSize(15);
          text("juego terminado fruta incorrecta", width/2, height/2);
          stop();
        } 
      }
    }
  }
  
  public void tablero(){
    //float a = round(random(0,3)), b = round(random(1,3));
    int operador = round(random(1,4));
    if(continuar){
      switch(operador){
      case 1:
        this.operacion =  "1 + 1 = ";
        this.resultado = 2;
        break;
      case 2:
        this.operacion = "5 - 2 =";
        this.resultado = 3;
        break;
      case 3:
        this.operacion = "2 * 2";
        this.resultado = 4;
        break;
      case 4:
        this.operacion = "10 / 2";
        this.resultado = 5;
        break;
      default:
        break;
      }
      this.continuar = false;
    }
  }
  
  public void puntaje(){
    stroke(179, 140, 198);
    fill(255, 0 ,255);
    //rect(90, 70, 160, 80);
    fill(118, 22, 167);
    textSize(17);
    text( "Operacion: " + this.operacion, 70, 50);
    
    fill(118, 22, 167);
    textSize(17);
    text( "Resultado: " + this.resultado, 70, 70);
  }
}
