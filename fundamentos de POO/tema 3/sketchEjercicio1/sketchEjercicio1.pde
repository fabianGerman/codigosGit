int x = 20;
int y = 20;
int altoRectangulo = 20;
int anchoRectangulo = 20;
int margenDerecho = 480;

void setup(){
  size(500,500);
  
}

void draw(){
  if(y >= height){//si la ordenada es mayor al limite de la altura detiene el draw
    noLoop();//detiene el draw
    println("el valor de la abscisa es ", x," y el de la ordenada es ",y);
  }
  if(y >= height/2){//cuando la ordenada sea mayor a la mitad de la altura el color de los rectangulos
    fill(0,0,255);
  }
  if(x == margenDerecho-anchoRectangulo){ //controla que la abscisa no sobrepase el margen 
    x = 20;
    y = y + altoRectangulo * 2;
  }
  rect(x,y,altoRectangulo,anchoRectangulo);
  x=x+1;
}
