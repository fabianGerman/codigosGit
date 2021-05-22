class Paleta{
    private PVector posicion;
    private PVector dimension;
    
    public Paleta(float _x, float _y, float _w, float _h){
      this.posicion = new PVector();
      this.dimension = new PVector();
      this.posicion.add(_x,_y);
      this.dimension.add(_w,_h);
    }
    
    public PVector getPosicion(){
      return posicion;
    }
    
    public PVector getDimension(){
      return dimension;
    }
    
    void dibujar(){
      stroke(6,64,189);
      strokeWeight(4);
      fill(7,77,237);
      rect(posicion.x-25, mouseY, dimension.x, dimension.y);
      posicion.y = mouseY;
    }
    
    public void colicion(){
      if(!(posicion.y >= 0)){
        posicion.y = 0;
      }else if(posicion.y >= height-100){
        posicion.y = height-100;
      }
    }
    
    public void rebote(Pelota pelota){
      PVector auxiliar = new PVector();
      float catetoAd, catetoOp, distancia;
      auxiliar = new PVector(pelota.getPosicion().x,posicion.y,pelota.getPosicion().z);
      if(posicion.y < pelota.getPosicion().y){
        auxiliar.y = pelota.getPosicion().y;
      }else if(posicion.y > pelota.getPosicion().y+pelota.getPosicion().z){
        auxiliar.y = pelota.getPosicion().y+pelota.getPosicion().z;
      }
      catetoAd = auxiliar.x - posicion.x;
      catetoOp = auxiliar.y - posicion.y;
      distancia = sqrt(pow(catetoAd,2)+pow(catetoOp,2));
      if(distancia < dimension.y){
        dimension.y = dimension.y -0.5;
      }
      if(dimension.y <=  0){
        text("JUEGO TERMINADO",width/2,height/2);
        stop();
      }
    }

}
