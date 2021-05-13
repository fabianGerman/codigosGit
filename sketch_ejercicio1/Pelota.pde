class Pelota {
  private PVector posicion;
  private PVector velocidad;

  public Pelota(float _x, float _y, float _z) {
    this.posicion = new PVector();
    this.velocidad = new PVector();
    this.posicion.add(_x, _y, _z);
    this.velocidad.add(random(2, 4), random(2, 4));
  }

  public PVector getPosicion() {
    return posicion;
  }

  public void dibujar() {
    stroke(224, 224, 8);
    strokeWeight(4);
    fill(255, 255, 0);
    circle(posicion.x, posicion.y, posicion.z);
  }

  public void mover() {
    posicion.add(velocidad);
  }

  public void colicion(Paleta paleta) {
    PVector auxiliar = new PVector();
    float catetoAd, catetoOp, distancia;
    auxiliar = new PVector(paleta.getPosicion().x, posicion.y);
    if (posicion.y < paleta.getPosicion().y) {
      auxiliar.y = paleta.getPosicion().y;
    } else if (posicion.y > paleta.getPosicion().y + paleta.getDimension().y) {
      auxiliar.y = paleta.getPosicion().y+paleta.getDimension().y;
    }
    catetoAd = auxiliar.x - posicion.x;
    catetoOp = auxiliar.y - posicion.y;
    distancia = sqrt(pow(catetoAd, 2)+pow(catetoOp, 2));
    if (distancia < posicion.z) {
      velocidad.x *= -1;
    }
    if (posicion.y < 0 || posicion.y >height) {//colicion contra la parte superior e inferior del lienzo
      velocidad.y *= -1;
    }
    if (posicion.x < 60) {//colicion contra la parte dereca del lienzo
      velocidad.x *= -1;
      velocidad.x = velocidad.x+1
      ;
    }
    if (posicion.x > width) {
      text("JUEGO TERMINADO", width/2, height/2);
      stop();
    }
  }
}
