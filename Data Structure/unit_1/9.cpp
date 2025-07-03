// Write a CPP program to create a Matrix and print lower Triangular.
#include<iostream>
using namespace std;
int main(){
    int size;
    cout<<"\n enter the size of matrix:";
    cin>>size;
    int mat[10][10];

    for(int i=0;i<size;i++){
        for(int j=0;j<size;j++){
            cout<<"a["<<i+1<<"]["<<j+1<<"]: ";
            cin>>mat[i][j];
        }
    }

    cout<<"\n The entred values are:"<<endl;
    for(int i=0;i<size;i++){
        for(int j=0;j<size;j++){
            cout<<"a["<<i+1<<"]["<<j<<"]= "<<mat[i][j];
        }
        cout<<endl;
    }

    cout<<"\n printing the lower triangular of matrix"<<endl;
    for(int i=0;i<size;i++){
        for(int j=0;j<size;j++){
            if(i>=j){
                cout<<mat[i][j]<<"\t";
            }else{
                cout<<"0\t";
            }
        }
        cout<<endl;
    }
    cout<<endl;
    return 0;
}