/*
#include <iostream>
#include <vector>
#include <string.h>
#include <math.h>
using namespace std;

int main(){
    int N, camiseta,cantidad=0;
    vector <string> v1, v2;
    
    for (int i = 11; i <= 100000; i++)
    {
        v1.push_back("Arquero");
        v1.push_back("Lateral derecho");
        v1.push_back("Lateral izquierdo");
        v1.push_back("Defensa central");
        v1.push_back("Defensa central");
        v1.push_back("Pivote");
        v1.push_back("Extremo derecho");
        v1.push_back("Mediocentro");
        v1.push_back("Delantero central");
        v1.push_back("Mediapunta");
        v1.push_back("Extremo izquierdo");
    }

    cin>>N;
    if(N>=1 && N<=100000){
        while (cantidad < N)
        {
            cin>>camiseta;
            if(camiseta>=1 && camiseta<=pow(10,9)){
                v2.push_back(v1[camiseta-1]);
            }
            cantidad++;
        }
        for(int i=0; i<v2.size();i++){
            cout<<v2[i]<<endl;
        }
    }
}*/
#include<iostream>
#include<vector>
using namespace std;
int main(){
    vector <int>v1,v2;
    int n,m,v,c=0;
    cin>>n >>m;
    for (int i = 0; i < n; i++)
    {
        cin>>v;
        v1.push_back(v);
    }
    for (int i = 0; i < m; i++)
    {
        cin>>v;
        v2.push_back(v);
    }
    for(int i = 0; i < v2.size(); i++){
        for(int j=0; j < v1.size(); j++){
            if(v2[i] == v1[j]){
                c++;
            }
        }
        
        cout<<v2[i]<<" "<<c<<endl;
        c=0;
    }
    
}









