#include<iostream>
#include<math.h> //necesario para utilizar la funcion pow
#include<string.h>
#define PI 3.14; //constante global

using namespace std;

void punto1();
void punto2();
void punto3();
void punto4();
void punto5();
void punto6();
void punto7();
void punto8();
void punto9();
void punto10();
void punto11();
void punto12();
void punto13();
void punto14();
void punto15();
void punto16();
void punto17();
void punto18();
void punto19();

int main(){
    punto1();
    punto2();
    punto3();
    punto4();
    punto5();
    punto6();
    punto7();
    punto8();
    punto9();
    punto10();
    punto11();
    punto12();
    punto13();
    punto14();
    punto15();
    punto16();
    punto17();
    punto18();
    punto19();
}

void punto1(){
    char mensaje[40];//vector de caracter de 40 elementos
    cout<<"ingresar mensaje "<<endl;
    cin.getline(mensaje,40);//cin.getline permite agregar cadenas de caracater con espacio incluido
    cout<<mensaje<<endl;
}

void punto2(){
    float numeroA, numeroB;
    float suma, resta, division, multiplicacion;
    //entrada de datos
    cout<<"ingresar numeros "<<endl;
    cin>>numeroA;
    cin>>numeroB;
    //operacion
    suma = numeroA + numeroB;
    resta = numeroA - numeroB;
    division = numeroA / numeroB;
    multiplicacion = numeroA * numeroB;
    //salida
    cout<<"la suma es "<<suma<<endl;
    cout<<"la resta es "<<resta<<endl;
    cout<<"la division es "<<division<<endl;
    cout<<"la multiplicacion es "<<multiplicacion<<endl;
}

void punto3(){
    float radio = 0;
    float area = 0;
    do{
        cout<<"ingresar radio "<<endl;
        cin>>radio;
    }while(radio <= 0);//el usuario debe ingresar un valor mayor a 0 para salir del bucle
    area = 2 * radio * PI;
    cout<<"el area es "<<area;
}

void punto4(){
    int vector[4];
    int numero;
    cout<<"ingresar un valor ";
    cin>> numero;
    for(int i = 0; i < 4; i++){
        vector[i]=numero - i;
    }
    for(int i = 0; i < 4; i++){
        cout<<vector[i];
    }
}

void punto5(){
    float x, y;
    float resultado;
    cout<<"ingresar x"<<endl;
    cin>>x;
    cout<<"ingresar y"<<endl;
    cin>>y;
    resultado = pow(x,2) + x*y - pow(x-y,2);
    cout<<"el resultado es "<<resultado<<endl;
}

void punto6(){
    float a, b, c;
    float resultado;
    cout<<"ingresar a"<<endl;
    cin>>a;
    cout<<"ingresar b"<<endl;
    cin>>b;
    cout<<"ingresar c"<<endl;
    cin>>c;
    resultado = 2*a * pow(pow(b,2) - 4*a*c);
    cout<<"el resultado es "<<resultado<<endl;
}

void punto7(){
    float radio, volumen;
    do{
        cout<<"ingresar radio "<<endl;
        cin>>radio;
    }while(radio <= 0);//el usuario debe ingresar un valor mayor a 0 para salir del bucle
    volumen = (4/3)*PI*pow(radio,3);
    cout<<"el resultado es "<<radio<<endl;
}

void punto8(){
    int numero numero, numInvertido=0;
    cout<<"ingresar numero ";
    cin>>numero;
    while(numero > 0){
        numInvertido = numInvertido * 10 + (numero % 10);
        numero = numero / 10;
    }
    cout<<"el numero invertido es "<<numInvertido<<endl;
}

void punto9(){
    char mensaje[40], mensaje2[40];//vector de caracter de 40 elementos
    cout<<"ingresar primer mensaje "<<endl;
    cin.getline(mensaje,40);//cin.getline permite agregar cadenas de caracater con espacio incluido
    cout<<"ingresar segundo mensaje "<<endl;
    cin.getline(mensaje2,40);
    if (strncmp(mensaje,mensaje2))
    {
        cout<<"son iguales"<<endl;
    }else{
        cout<<"no son iguales"<<endl;
    }
}

void punto10(){
    int numero, resultado;
    cout<<"ingresar numero"<<endl;
    cin>>numero;
    if(numero > 0){
        resultado = numero * 100;
    }else{
        resultado = numero *(-1);
    }
    cout<<"resultado "<<numero<<endl;
}

void punto11(){
    int numero;
    cout<<"ingresar valor "<<endl;
    cin>>numero;
    if(numero % 2 == 0){
        cout<<"el numero es par"<<endl;
    }else{
        cout<<"el numero es impar"<<endl:
    }
}

void punto12(){
    int a, b, c;
    cout<<"ingrese primer valor"<<endl;
    cin>>a;
    cout<<"ingrese segundo valor"<<endl;
    cin>>b;
    cout<<"ingrese tercer valor"<<endl;
    cin>>c;
    if(a == b == c){
        cout<<"operacion no permitida"<<endl;
    }else{
        if(a > b && a > c){
           cout<<"el mayor es a: "<<a<<endl;
        }else{
            if (b > a && b > c){
                cout<<"el mayor es b: "<<b<<endl;
            }else{
                if(c > a && c > b){
                    cout<<"el mayor es c: "<<c<<endl;
                }
            }
                
        }
    }
}

void punto13(){
    float nota1, nota2, nota3, promedio;
    do{
        cout<<"ingresar notas "<<endl;
        cin>>nota1;
        cin>>nota2;
        cin>>nota3;
    if (nota1 < 0 && nota2 < 0 && nota3 < 0)
    {
        cout<<"los valores no pueden ser negativos"<<endl;
    }
    
    }while (nota1 < 0 && nota2 < 0 && nota3 < 0);
    promedio = (nota1 + nota2 + nota3)/3
    cout<<"el promedio es "<<promedio<<endl;
}

void punto14(){
    float lado1, lado2, lado3;
    cout<<"ingressar lados "<<endl;
    cin>>lado1;
    cin>>lado2;
    cin>>lado3;
    if(lado1 == lado2 && lado1 == lado3)
    {
        cout<<"el triangulo es equilatero"<<endl;
    }
    else if(lado1 == lado2 || lado1 == lado2 || lado2 ==lado3)
    {
        cout<<"el triangulo es iscoseles"<<endl;
    }
    else if(lado1 != lado2 && lado1 != lado2 && lado2 != lado3)
    {
        cout<<"el triango es escaleno"<<endl;
    }
}

void punto15(){
    float x, y;
    cout<<"ingresar valores x e y"<<endl;
    cin>>x;
    cin>>y;
    if(x > 0 && y >= 0){
        cout<<"el punto "<<"("<<x<<","<<y<<")"<<" pertenece al primer cuadrante"<<endl;
    }
    if(x <= 0 && y > 0){
        cout<<"el punto "<<"("<<x<<","<<y<<")"<<" pertenece al segundo cuadrante"<<endl;
    }
    if(x < 0 && y <= 0){
        cout<<"el punto "<<"("<<x<<","<<y<<")"<<" pertenece al tercer cuadrante"<<endl;
    }
    if(x >= 0 && y < 0){
        cout<<"el punto "<<"("<<x<<","<<y<<")"<<" pertenece al primer cuadrante"<<endl;
    }
    if (x == 0 && y == 0){
        cout<<"el punto "<<"("<<x<<","<<y<<")"<<" pertenece al origen"<<endl;
    }
}

void punto16(){
    char mensaje[40];
    cout<<"ingresar mensaje "<<endl;
    cin.getline(mensaje,40);
    for(int i = 1; i < 7; i++){
        cout<<mensaje<<endl;
    }
}

void punto17(){
    do
    {
        cout<<"ingrese cantidad "<<endl;
        cin>>numero;
    } while (numero < 0);
    
    for(int i = 1; i < numero; i++){
        cout<<"Hola a todos"<<endl;
    }
}

void punto18(){
    for(int i = 1; i < 20; i++){
        if(i % 2 == 0){
            cout<<i<<endl;
        }
    }
}

void punto19(){
    int tvector[10];
    int contador = 1, valor, i = 0, cantidad = 0;
    cout<<"ingresar numero"
    do{
        cin>>valor;
        contador++;
        tvector[i] = valor;
        i++;
    }while (contador < = 10);
    for(int i = 0; i < tvector.lenght(); i++){
        if(tvector[i] == 7){
            cantidad++;
        }
        if (cantidad == 0){
            cout<<"no se ingrese ningun numero 7"<<endl;
        }
        
    }
}