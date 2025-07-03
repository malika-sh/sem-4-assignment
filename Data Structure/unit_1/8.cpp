//Write a CPP program to create a Matrix and print Upper Triangular
#include<iostream>
using namespace std;
int main(){
    int size;
    cout<<"enter the size of matrix";
    cin>>size;
    int matrix[10][10];

    for(int i=0;i<size;i++){
        for(int j=0;j<size;j++){
            cout<<"a["<<i+1<<"]["<<j+1<<"]:";
            cin>>matrix[i][j];
        }
    }

    cout<<"\n th entered values are"<<endl;
    for(int i=0;i<size;i++){
        for(int j=0;j<size;j++){
            cout<<"a["<<i+1<<"]["<<j<<"]= "<<matrix[i][j]<<"\t";
        }
        cout<<endl;
    }

    cout<<"\n the printing the upper triangular of the matrix: "<<endl;
    for(int i=0;i<size;i++){
        for(int j=0;j<size;j++){
            if(i<=j){
                cout<<matrix[i][j]<<"\t";
            }else{
                cout<<"0\t";
            }
        }
        cout<<endl;
    }
    cout<<endl;
    return 0;
}