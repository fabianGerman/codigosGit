#include<iostream>//libreria

using namespace std;

int main(){//modulo principal
    int numero, resta;
    cout<<"ingresar numeros: ";
    cin>>numero;
    resta = numero;

    for (int i = 0; i <= 3; i++)
    {
        cout<<resta;
        resta = resta - 1; 
    }
    
}