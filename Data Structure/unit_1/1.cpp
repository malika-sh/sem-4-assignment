// Write a CPP program to create a matrix and check whether that matrix is Sparse matrix or
//  not.
#include<iostream>
using namespace std;

int main(){
    int rows,cols;
    cout<<"enter the number of rows:"<<endl;
    cin>>rows;
    cout<<"enter the number of columns:"<<endl;
    cin>>cols;

    int matrix[rows][cols];
    for(int i=0;i<rows;i++){
        for(int j=0;j<cols;j++){
            cout<<"a["<<i+1<<"]["<<j<<"]:";
            cin>>matrix[i][j];
        }
    }
    int count=0;

    cout<<"\n Entered values are:"<<endl;
    for(int i=0;i<rows;i++){
        for(int j=0;j<cols;j++){
            cout<<"a["<<i+1<<"]["<<j<<"]= "<<matrix[i][j]<<"\t";
            if(matrix[i][j]==0){
                count++;
            }
        }
        cout<<endl;
    }
    if(count > ((rows*cols)/2)){
        cout<<"\n the entered matrix is sparse matrix"<<endl;
    }
    else{
        cout<<"\nThe entered matrix is not sparse matrix"<<endl;
    }
    return 0;
}