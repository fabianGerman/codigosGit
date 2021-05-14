class Triangulo{
  private PVector puntoA;
  private PVector puntoB;
  private PVector puntoC;
  
  public Triangulo(float _x1, float _y1, float _x2, float _y2, float _x3, float _y3){
    this.puntoA = new PVector();
    this.puntoB = new PVector();
    this.puntoC = new PVector();
    this.puntoA.add(_x1,_y1);
    this.puntoB.add(_x2,_y2);
    this.puntoC.add(_x3,_y3);
  }
 
 public PVector getPuntoA(){
   return puntoA;
 }
 
 public PVector getPuntoB(){
   return puntoB;
 }
 
 public PVector getPuntoC(){
   return puntoC;
 }
 
 /*
 para calcular el valor de los lados utilizo el teorema de pitagoras 
 y utilizo el metodo round() para redondear su valor
 */
  public void dibujar(){
    float catetoMayor = round(sqrt(pow(puntoB.x-puntoA.x,2)+pow(puntoB.y-puntoA.y,2)));//lado A
    float catetoMenor = round(sqrt(pow(puntoA.x-puntoC.x,2)+pow(puntoA.y-puntoC.y,2)));//lado B
    float hipotenusa = round(sqrt(pow(puntoC.x-puntoB.x,2)+pow(puntoC.y-puntoA.y,2)));//lado C
    if((catetoMayor+catetoMenor > hipotenusa) && (catetoMayor+hipotenusa > catetoMenor) && (catetoMenor+hipotenusa>catetoMayor)){
      fill(245, 166, 81);
      stroke(5);
      triangle(puntoA.x,puntoA.y,puntoB.x,puntoB.y,puntoC.x,puntoC.y);
      println("lado A: ",catetoMayor,"- lado B:",catetoMenor,"- lado C: ",hipotenusa);
    }
  }
  
  public boolean esEquilatero(){
    float catetoMayor = round(sqrt(pow(puntoB.x-puntoA.x,2)+pow(puntoB.y-puntoA.y,2)));//lado A
    float catetoMenor = round(sqrt(pow(puntoA.x-puntoC.x,2)+pow(puntoA.y-puntoC.y,2)));//lado B
    float hipotenusa = round(sqrt(pow(puntoC.x-puntoB.x,2)+pow(puntoC.y-puntoA.y,2)));//lado C
    boolean esVerdadero = false;
    if((catetoMayor == catetoMenor) && (catetoMayor == hipotenusa) && (catetoMenor == hipotenusa)){
      esVerdadero = true;
    }
    return esVerdadero;
  }
  
  public boolean esIsosceles(){
    float catetoMayor = round(sqrt(pow(puntoB.x-puntoA.x,2)+pow(puntoB.y-puntoA.y,2)));//lado A
    float catetoMenor = round(sqrt(pow(puntoA.x-puntoC.x,2)+pow(puntoA.y-puntoC.y,2)));//lado B
    float hipotenusa = round(sqrt(pow(puntoC.x-puntoB.x,2)+pow(puntoC.y-puntoA.y,2)));//lado C
    boolean esVerdadero = false;
    if((catetoMayor == catetoMenor) || (catetoMayor == hipotenusa) || (catetoMenor == hipotenusa)){
      esVerdadero = true;
    }
    return esVerdadero;
  }
  
  public boolean esEscaleno(){
    float catetoMayor = round(sqrt(pow(puntoB.x-puntoA.x,2)+pow(puntoB.y-puntoA.y,2)));//lado A
    float catetoMenor = round(sqrt(pow(puntoA.x-puntoC.x,2)+pow(puntoA.y-puntoC.y,2)));//lado B
    float hipotenusa = round(sqrt(pow(puntoC.x-puntoB.x,2)+pow(puntoC.y-puntoA.y,2)));//lado C
    boolean esVerdadero = false;
    if((catetoMayor != catetoMenor) && (catetoMayor != hipotenusa) && (catetoMenor != hipotenusa)){
      esVerdadero = true;
    }
    return esVerdadero;
  }
}
