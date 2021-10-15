/*#include<iostream> suma de vectores
#include<vector>
using namespace std;
int main(){
    int rango, numero;
    vector <int>v1,v2,v3;

    do{
        cin>>rango;
    }while (rango < 0);
    for(int i=0; i < rango; i++){
        cin>>numero;
        v1.push_back(numero);
    }
    for(int i=0; i < rango; i++){
        cin>>numero;
        v2.push_back(numero);
    }
    for(int i=0; i < v1.size();i++){
        v3.push_back(v1[i]+v2[i]);
    }
    for(int i=0; i < v3.size();i++){
        cout<<v3[i]<<" ";
    }
}*/
/*rapto
#include<iostream>
#include<vector>
using namespace std;
int main(){
    vector <int> v1;
    int T, N ,n,cantidad=0,suma=0;

    do{
        cin>>T;
        cin>>N;
    }while(T < 0 && N < 0);
    while (cantidad < N)
    {
        cin>>n;
        v1.push_back(n);
        cantidad++;
    }
    for(int i=0; i < v1.size();i++){
        suma=suma+v1[i];
    }
    if(suma <= T){
        cout<<"Es posible";
    }else{
        cout<<"No es posible";
    }
}*/
#include<iostream>
using namespace std;
int main(){
    int num;
int num1;
int x = 0;
cin>> num>>num1;
if(num == num1)
{
  cout<<"Nivel Optimo";
}
else
{
  if(num > num1)
  {
   x = (num - num) * -1;
   cout<< 2 <<" "<< x;
  }else
  {
    x = (num - num1) * -1;
    cout<< 1 <<" "<< x;
  }
}
}