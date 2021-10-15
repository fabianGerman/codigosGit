#include<iostream>
#include<vector>
#include<math.h>


using namespace std;

void ingresar(int &numero);
void obtenerSecuencia(vector<int> &tvector, int numero);
void obtenerMayor(vector<int> tvector);
void mostrar(vector<int> tvector);

int main(){
    vector<int> tvector;
    int numero;
    ingresar(numero);
    obtenerSecuencia(tvector, numero);
    mostrar(tvector);
    obtenerMayor(tvector);
}

void menu(int opcion){
    cout<<"1: Obtener secuencia"<<endl;
    cout<<"2: "
}


void ingresar(int &numero){
    do{
        cin>>numero;
    }while (numero <=1 && numero > 10000);
}

void obtenerSecuencia(vector<int> &tvector, int numero){
    while (numero > 1)
    {
        if(numero % 2 == 0){
            numero = numero / 2;
            tvector.push_back(numero);
        }else{
            numero = (numero*3)+  1;
            tvector.push_back(numero);
        }
    }
}

void obtenerMayor(vector<int> tvector){
    int mayor = tvector[0];;
    for (size_t i = 0; i < tvector.size(); i++)
    {
        if (mayor < tvector[i])
        {
            mayor = tvector[i];
        }
    }
    cout<<mayor<<endl;
}

void mostrar(vector<int> tvector){
    for (size_t i = 0; i < tvector.size(); i++)
    {
        cout<<tvector[i]<<endl;
    }
    
}


