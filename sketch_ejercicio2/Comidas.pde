class Comidas{
  /*atributos*/
  private Comida comida;
  private ArrayList<Comida> comidas;
  private int cantidad;
  private int idColicion;
  /*constructor*/
  public Comidas(){
    this.comida = new Comida();
    //this.comida = new Comida(new PVector(random(1,width),random(1,height)),color(random(255),random(255),random(255)),20,20,1);
    this.comidas = new ArrayList<Comida>();
    //this.comidas.add(comida);
    this.cantidad = 6;
    this.idColicion = 0;
    agregarComida();
  }
  
  public void agregarComida(){
    for(int i=1; i < this.cantidad; i++){ 
      this.comida = new Comida(i, new PVector(random(1,width),random(1,height)),color(random(255),random(255),random(255)),(int)random(30,40),(int)random(30,40),i);
      this.comidas.add(this.comida);
      print("elementos agregados ",comida.resultado," - ");
    }
  }
  
  /*dibuja todos los objetos de la lista*/
  public void dibujar(){
    for(Comida c : this.comidas){
      c.dibujar();
    }
  }
  
  /*colicion de la serpiente contra la fruta
    es un metodo booleano que al cumplirse podra seguir a la siguiente operacion --> eliminarFruta linea 52
  */
  public boolean colicion(Serpiente serpiente){
    boolean esColicion = false;
    Comida auxiliar;//variable auxiliar que se usara para recorrer la lista
    for(int i = 0; i < comidas.size() && esColicion == false; i++){
      auxiliar=comidas.get(i);
      if(auxiliar.colicion(serpiente)){//controla de exista colicion
        esColicion = true;
        idColicion = auxiliar.id;//se guarda el id de la fruta con la que se coliciono
      }
    }
    return esColicion;
  }

  /*borra una fruta del arraylist teniendo como control el id de la fruta y el resultado del tablero pasado como parametro
   el metodo es booleano que permitira generar una nueva operacion si se cumple las operaciones de control
  */
  public boolean eliminarFruta(float resultado){
    Comida auxiliar;//variable auxiliar que se usara para recorrer la lista
    boolean encontrado = false, eliminado = false;//la variable encontrado se usa para detener el recorrido si se cumple la condicion
    for(int i = 0; i  < comidas.size() && encontrado == false; i++){
      auxiliar = this.comidas.get(i);
      if(auxiliar.resultado == resultado && idColicion == auxiliar.id){//controla que el id buscado y el resultado pasado por parametro coincidan con uno de los elementos de la lista
        encontrado = true;//cambia su etado para detener el array
        eliminado = true;
        comidas.remove(i);//elimina un elemento en la posicion indicada
      }
    }
    return eliminado;
  }
}
