/*
#include <iostream>
#include <vector>

using namespace std;

int main(){
    vector<int> tvector;
    int N,G,X,aux;
    cin >> N;
    cin >> G;
    for(int i=0; i<N;i++){
        if(1 >= X && X <= 100){
            cin >> X ;
            tvector.push_back(X); 
        }      
    }

    for(int i=0; i<G;i++){
        int aux =tvector.at(tvector.size()-1);
        tvector.insert(tvector.begin(),aux);
        tvector.pop_back();
    }
    for(int i=0; i<tvector.size();i++){
        cout << tvector.at(i) <<endl;
    }
}*/
/*
#include <iostream>
#include <math.h>
using namespace std;

int main(){
    int N,M,resultado=0;
    cin >> N;
    cin >> M;
    if(N>=0 && N<=30 && M>=0 && M<=30){
    resultado= (N*2)-M;
    if(resultado >= 10){
        cout << "SI" << endl;
    }else{
        cout << "NO" << endl;
    }
    }
    return 0;
}*/

/*
#include<math.h>
#include<iostream>
using namespace std;

int main(){
    int N,M,total;
    cin >> N;
    cin >>M;
    if(N>=1 && N<=10 && M>=1 && M<=500){
        if(M<N){
            total = 0;
        }else{
            total = M/N;
            
            total = total + M%N;
        }
        cout << total << endl;
    }
}*/

#include <iostream>
#include <math.h>

using namespace std;

int main(){

    int N, M, d, s ,l;
    cin>>N;
    cin>>M;
        if(N>=1 && N<=10 && M>=1 && M<=500){
            d=M/N;
            s=M%N;
            l=d;
            if(s%2 == 0){
            l += s;
            
        }
            cout<<l<<endl;
    }

}