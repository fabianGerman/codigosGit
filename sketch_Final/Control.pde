 /*Controles del personaje*/
 boolean left,right,jump,shoot,haciaLaDerecha;
 /*Detecta si se presiono alguna de las siguientes teclas*/
void keyPressed(){
      switch (keyCode){
        case 65://left //a
          haciaLaDerecha=false;
          left = true;
          break;
        case 68://right //d
          haciaLaDerecha=true;
          right = true;
          break;
        case 87://jump //w 
          jump = true;
          break;
      case 83://down
         // down = true;
          break;
      case 74://Shoot //j
          shoot = true;
          //balas.add(new Bala(agente.posicion,haciaLaDerecha));
          agente.disparar(balas);
          break;
      }

  }
/*Detecta si se dejo de presionar alguna de las siguientes teclas*/  
void keyReleased(){
    switch (keyCode){
    case 65://left
      left = false;
      break;
    case 68://right
      right = false;
      break;
    case 87://jump
      //if(millis() > millis() + 500){
        //jump = false;
      //}   
      break;
    case 83://down
      //down = false;
      break;
    case 74://J Shoot
      //shoot = false;
      break;      
    }
  }
