class Agente{
  private PVector posicion; //posicion en el lienzo
  private int cantFrames;//cantidad de frames 
  private int currentFrame;//Funciano como iterador para recorer el Array de imagenes
  private int currentFrame2;//Funciano como iterador para recorer el Array de imagenes
  private int currentFrame3;//Funciano como iterador para recorer el Array de imagenes
  private int currentFrame4;//Funciano como iterador para recorer el Array de imagenes
  private int currentFrame5;//Funciano como iterador para recorer el Array de imagenes
  private int currentFrame6;//Funciano como iterador para recorer el Array de imagenes
  private int delay;//agrega retraso a cada frame para una mejor animacion
  private PImage [] sprite;//Array de imagenes para Sprite
  private PImage [] spriteStandingLeft;//Array de imagenes para spriteStandingLeft
  private PImage [] spriteWalking;//Array de imagenes para spriteWalking
  private PImage [] spriteWalkingLeft;//Array de imagenes para spriteWalkingLeft
  private PImage [] spriteJump;//Array de imagenes para spriteJump
  private PImage [] spriteShooting;//Array de imagenes para spriteShooting
  private PImage [] spriteShootingLeft;//Array de imagenes para  spriteShootingLeft
  private float accelerationX;//valores de acelerascion en X usados a continuacion 
  private float accelerationY;//valores de acelerascion en Y usados a continuacion 
  private float speedLimit;//Limitador de la velocidad 
  private float friccion;//Friccion usada para el deslizamiento 
  private float gravedad;//Usada para que el personaje vuelva al suelo
  private float vx;//Usadas para el movimiento del agente en X
  private float vy;//Usadas para el movimiento del agente en Y
  private float jumpForce;//Fuerza del salto 
  private boolean sobreSuelo;//Usada para hacer un sobreSuelo y poder caminar en las platadormas
  private int ancho, alto;//Usadas para el piso estatico
  private int medioancho, medioalto;//Usadas para el piso estatico
  private int tamanio;//Usado en los metodos de colision 
  private String collisionSide;//se usara para detectar en que lado ocurrio la colsion con el cuadrado
  private String collisionSide2;//se usara para detectar en que lado ocurrio la colsion con la plataforma
  
  public Agente(){
    this.posicion = new PVector(width/2 - 200,height-100);
    this.cantFrames = 11;
    this.sprite = new PImage [cantFrames];
    
    //carga de animacion estando parado
    for (int i = 0; i<cantFrames; i++){
      sprite[i]=loadImage("Resources/Metal_Slug/PlayerStanding/"+nf(i,2)+".png");
    }
    //carga de animacion estando parado hacia la izquierda
    this.spriteStandingLeft = new PImage [11];
    for (int g = 0; g<11; g++){
      spriteStandingLeft[g]=loadImage("Resources/Metal_Slug/PlayerStandingLeft/"+nf(g,2)+".png");
    }   
    //carga de animacion corriendo hacia la izquierda
    this.spriteWalkingLeft = new PImage [23];
    for (int h = 0; h<23; h++){
      spriteWalkingLeft[h]=loadImage("Resources/Metal_Slug/PlayerWalkingLeft/"+nf(h,2)+".png");
    } 
    //carga de animacion corriendo hacia la derecha
    this.spriteWalking = new PImage [23];
    for (int j = 0; j<23; j++){
      spriteWalking[j]=loadImage("Resources/Metal_Slug/PlayerWalking/"+nf(j,2)+".png");
    }
    //carga de animacion de salto
    this.spriteJump = new PImage [6];
    for (int k = 0; k<6; k++){
      spriteJump[k]=loadImage("Resources/Metal_Slug/PlayerJumpUp/"+nf(k,2)+".png");
    }    
    //carga de animacion de disparo
    this.spriteShooting = new PImage [8];
    for (int l = 0; l<8; l++){
      spriteShooting[l]=loadImage("Resources/Metal_Slug/PlayerShooting/"+nf(l,2)+".png");
    }
    //carga de animacion de disparo hacia la izquierda
    this.spriteShootingLeft = new PImage [8];
    for (int m = 0;m<8; m++){
      spriteShootingLeft[m]=loadImage("Resources/Metal_Slug/PlayerShootingLeft/"+nf(m,2)+".png");
    }    
   
    accelerationX = 0;
    accelerationY = 0;    
    speedLimit = 4;
    friccion = 0.96;
    gravedad = 3;
    sobreSuelo = false;
    jumpForce = -9;
    currentFrame = 0;
    delay = 0;
    currentFrame2 = 0;
    currentFrame3 = 0;
    currentFrame4 = 0;
    currentFrame5 = 0;
    currentFrame6 = 0;
    ancho=26;
    alto=40;
    medioancho=ancho/2;
    medioalto=alto/2; 
    this.tamanio = 30;
  }
  /*Metodos Accesores*/
  public void setPosicion(PVector pos){
    this.posicion = pos;
  }
  
  public int getAncho(){
    return this.ancho;   
  }
  public int getAlto(){
    return this.alto;   
  }  
  
  /*Zona de Metodos*/
  
  /*Dibujara las animaciones del Agente*/
  public void display(){
    rectMode(CORNER);
    //animacion estando quieto hacia la derecha
    if(!left && !right && !jump && !shoot && haciaLaDerecha){
      cantFrames = 11;
      image(this.sprite[currentFrame],this.posicion.x,this.posicion.y);
      if(delay == 0){
        currentFrame = (currentFrame+1)%cantFrames;
      }
        delay = (delay+1)%5;

    }
    
    //animacion estando quieto hacia la izquierda
    if(!haciaLaDerecha && !left && !jump && !shoot){
      cantFrames = 11;
      image(this.spriteStandingLeft[currentFrame6],this.posicion.x,this.posicion.y);
      if(delay == 0){
        currentFrame6 = (currentFrame6+1)%cantFrames;
      }
        delay = (delay+1)%5;

    }
    
    //animacion correr a la izquierda
    if(left && !jump && !right && !shoot){
      cantFrames = 13; 
      image(this.spriteWalkingLeft[currentFrame2],this.posicion.x,this.posicion.y);  
      if(delay == 0){
        currentFrame2 = (currentFrame2+1)%cantFrames;
      }
      delay = (delay+1)%5;

    }
    //animacion corre a la derecha
    if(right && !shoot && !left && !jump){
      cantFrames = 13;     
      image(this.spriteWalking[currentFrame4],this.posicion.x,this.posicion.y);
      if(delay == 0){
        currentFrame4 = (currentFrame4+1)%cantFrames;
      }
        delay = (delay+1)%5;

    }
    //animacion de si se presiona left y right juntos
    if(right && left && !jump){
      cantFrames = 13;     
      image(this.spriteWalking[currentFrame4],this.posicion.x,this.posicion.y);
      if(delay == 0){
        currentFrame4 = (currentFrame4+1)%cantFrames;
      }
        delay = (delay+1)%5;

    }    
    
    //animacion de salto
    if(jump && !shoot){
      cantFrames = 6;
        if(currentFrame3 == cantFrames -1){
          jump = false;         
        }      
           
      image(this.spriteJump[currentFrame3],this.posicion.x,this.posicion.y);
      if(delay == 0){
        currentFrame3 += 1;
      }
        delay = (delay+1)%5;
      
        if(!jump){
          currentFrame3 = 0;
        }
    }
    
    //animacion de disparo a la derecha
    if(shoot && haciaLaDerecha){
      cantFrames = 8;
      //jump = false;
        if(currentFrame5 == cantFrames -1){
          shoot = false;
          jump = false;
        }      
           
      image(this.spriteShooting[currentFrame5],this.posicion.x,this.posicion.y);
      if(delay == 0){
        currentFrame5 = (currentFrame5+1)%cantFrames;
      }
        delay = (delay+1)%4;
      
        if(!shoot){
          currentFrame5 = 0;
        }   
    }
    
    //animacion de disparo hacia la izquierda
    if(shoot && !haciaLaDerecha){
      //jump = false;
      cantFrames = 8;
        if(currentFrame5 == cantFrames -1){
          shoot = false;
          jump = false;
        }      
           
      image(this.spriteShootingLeft[currentFrame5],this.posicion.x,this.posicion.y);
      if(delay == 0){
        currentFrame5 = (currentFrame5+1)%cantFrames;
      }
        delay = (delay+1)%4;
      
        if(!shoot){
          currentFrame5 = 0;
        }   
    }
  }  
  
  /*Movimiento del Jugador */
  public void mover(){
    if (left){
      accelerationX = -0.2;
      friccion = 1;
    }
    if (right){
      accelerationX = 0.2;
      friccion = 1;
    }
    if(!left && !right) {
      accelerationX = 0;
      friccion = 0.96;
      gravedad = 0.3;
    }else if (left && right){
      accelerationX = 0;
      friccion = 0.96;
      gravedad = 0.3;
    }

    if (jump && sobreSuelo){
      vy += jumpForce;
      sobreSuelo = false;
      friccion = 1;
    }

    vx += accelerationX;
    vy += accelerationY;

    ////aplica la fuerza del universo
    if (sobreSuelo){
      vx *= friccion;
    }
    vy += gravedad;

    ////Marca Limites de Velocidad
    if (vx > speedLimit){
      vx = speedLimit;
    }
    if (vx < -speedLimit){
      vx = -speedLimit;
    }
    if (vy > speedLimit * 2){
      vy = speedLimit * 2;
    }
    

    
    ////mueve al jugador
    this.posicion.x+=vx;
    this.posicion.y+=vy;
    
  }
  
/*colision del jugador con la plataforma*/
 public void colisionar(Plataformas p){
  float dx;
  float dy;
  if(haciaLaDerecha == true){
    dx = (this.posicion.x+ancho/2) - (p.getPosicion().x + p.getAncho()/2);//distancia en x del agente con la plataforma
    dy = (this.posicion.y+alto/2) - (p.getPosicion().y + p.getAlto()/2);//distancia en y del agente con la plataforma
  }else{
    dx = (this.posicion.x+6+ancho/2) - (p.getPosicion().x + p.getAncho()/2);
    dy = (this.posicion.y+alto/2) - (p.getPosicion().y + p.getAlto()/2);
  }

  float combinedHalfWidths = medioancho + p.getAncho()/2;
  float combinedHalfHeights = medioalto + p.getAlto()/2;

  if (abs(dx) < combinedHalfWidths){
    ////puede estar ocurriendo una colisión
    ////ahora checka en el eje y
    if (abs(dy) < combinedHalfHeights){
      ////excelente. se superponen
      //determina la superposición en cada eje
      float overlapX = combinedHalfWidths - abs(dx);
      float overlapY = combinedHalfHeights - abs(dy);
      
      //la colisión está en el eje con el más pequeño de la superposición
      if (overlapX >= overlapY){
         if (dy > 0){
          collisionSide2 = "top";
     //// mueve el rectángulo hacia atrás para eliminar la superposición antes de llamar a su pantalla para evitar dibujar objetos uno dentro del otro
          this.posicion.y += overlapY;

        }else{
          collisionSide2 = "bottom";
          this.posicion.y -= overlapY;
        }
        
      }else{
        if (dx > 0){
          collisionSide2 = "left";
          this.posicion.x += overlapX;

        }else{
          collisionSide2 = "right";
          this.posicion.x -= overlapX;
        }
      }
    } else {
      collisionSide2 = "none";
    }
  }else {
    collisionSide2 = "none";
  }
   
    line(this.posicion.x,this.posicion.y,p.getPosicion().x,p.getPosicion().y);      
  }
 
 /*Dependiendo de donde ocurrio la colision con la plataforma este metodo actuara*/
  void checkPlataforma(){
    //// actualización para las colisiones de las plataformas
    if (collisionSide2 == "bottom" && vy >= 0){
      sobreSuelo = true;
      //// voltea la gravedad para neutralizar su efecto 
      vy = -gravedad;
    }else if (collisionSide2 == "top" && vy <= 0){
      vy = 0;
    }else if (collisionSide2 == "right" && vx >= 0){
      vx = 0;
    }else if (collisionSide2 == "left" && vx <= 0){
      vx = 0;
    }
    if (collisionSide2 != "bottom" && vy > 0){
      sobreSuelo = false;
    }
  }
  
  /*Detecta si el agente se perdio en el borde izquierdo del lienzo*/
  public void colisionarBordeIzquierdo(){
    if(this.posicion.x + ancho < 0){
      //muerte.play();
      muerte.rewind();
      //delay(1000);
      reset();
    }
    if(this.posicion.y > height){
      //muerte.play();
      muerte.rewind();
      //delay(1000);
      reset();
    }    
  }
  
  /*Detecta la colision con el obstaculo Pincho*/
  public void colisionar(Pincho pinchos){
    if(this.posicion.x + ancho > pinchos.getPosX() + 5 && this.posicion.x < pinchos.getPosX()+30){
      if(this.posicion.y > pinchos.getPosY() -50 && this.posicion.y < pinchos.getPosY()){
          println("Muerte por pincho");
          //muerte.play();
          muerte.rewind();
          //delay(1000);
          reset();
      }
    }
    if(posicion.y > height){
      //muerte.play();
      //delay(1000);
      reset();
    }
  }
  
  
  /*Detecta la colision con el obstaculo cuadrado*/
  public void colisionar(Cuadrado cuadrados){
    float dx; 
    float dy;
    if(haciaLaDerecha == true){
      dx = (this.posicion.x+ancho/2) - (cuadrados.getPosX()- cuadrados.getTamanio()/2 + cuadrados.getTamanio()/2);//distancia en x del agente con el cuadrado
      dy = (this.posicion.y+alto/2) - (cuadrados.getPosY()- cuadrados.getTamanio()/2 + cuadrados.getTamanio()/2);//distancia en y del agente con el cuadrado
    }else{
      dx = (this.posicion.x+6+ancho/2) - (cuadrados.getPosX()- cuadrados.getTamanio()/2 + cuadrados.getTamanio()/2);//distancia en x del agente con el cuadrado
      dy = (this.posicion.y + alto/2) - (cuadrados.getPosY()- cuadrados.getTamanio()/2 + cuadrados.getTamanio()/2);//distancia en y del agente con el cuadrado
    }


  float combinedHalfWidths = medioancho + cuadrados.getTamanio()/2;
  float combinedHalfHeights = medioalto + cuadrados.getTamanio()/2;

  if (abs(dx) < combinedHalfWidths){
    ////puede estar ocurriendo una colisión
    ////ahora checka en el eje y
    if (abs(dy) < combinedHalfHeights){
      ////excelente. se superponen
      //determina la superposición en cada eje
      float overlapX = combinedHalfWidths - abs(dx);
      float overlapY = combinedHalfHeights - abs(dy);
      
      //la colisión está en el eje con el más pequeño de la superposición
      if (overlapX >= overlapY){
         if (dy > 0){
          collisionSide = "top";
     //// mueve el rectángulo hacia atrás para eliminar la superposición antes de llamar a su pantalla para evitar dibujar objetos uno dentro del otro
          this.posicion.y += overlapY;

        }else{
          collisionSide = "bottom";
          this.posicion.y -= overlapY;
        }
        
      }else{
        if (dx > 0){
          collisionSide = "left";
          this.posicion.x += overlapX;

        }else{
          collisionSide = "right";
          this.posicion.x -= overlapX;
        }
      }
    } else {
      collisionSide = "none";
    }
  }else {
    collisionSide = "none";
  }
   
   line(this.posicion.x,this.posicion.y,cuadrados.getPosX(),cuadrados.getPosY());     
  }
 
 /*Dependiendo de donde ocurrio la colision con el cuadrado este metodo actuara*/
  void checkPlatformaCuadrado(){
    
    if (collisionSide == "bottom" && vy >= 0){
      sobreSuelo = true;
      //// voltea la gravedad para neutralizar su efecto 
      vy = -gravedad;
    }else if (collisionSide == "top" && vy <= 0){
      vy = 0;
    }else if (collisionSide == "right" && vx >= 0){
      vx = 0;
    }else if (collisionSide == "left" && vx <= 0){
      vx = 0;
    }
    if (collisionSide != "bottom" && vy > 0){
      sobreSuelo = false;
    }
  }   
    
  /*Agrega una bala al array*/  
  public void disparar(ArrayList <Bala> balas){
    if(shoot){
      balas.add(new Bala(agente.posicion,haciaLaDerecha));
    }  
  }
  public PVector getPosicion(){
    return this.posicion;
  }
}
