// //Write a CPP program to create a matrix and check whether that matrix is diagnol matrix 
// or not.
#include<iostream>
using namespace std;

class solution{
    public:
    bool isDiagnol(int matrix[][3]){
        for(int i=0;i<3;i++){
            for(int j=0;j<3;j++){
                if(i !=j &&matrix[i][j]!=0){
                    return false;
                }
            }
        }
        return true;
    }
   
};
int main(){
    int matrix[3][3];
    cout<<"\n enter the value of yhe matrix:"<<endl;

    for(int i=0;i<3;i++){
        for(int j=0;j<3;j++){
            cout<<"a["<<i+1<<"]["<<j+1<<"]: ";
            cin>>matrix[i][j];
        }
    }
    cout<<"\n entred values are:"<<endl;
    for(int i=0;i<3;i++){
        for(int j=0;j<3;j++){
            cout<<"a["<<i+1<<"]["<<j<<"]= "<<matrix[i][j]<<"\t";
        }
        cout<<endl;
    }
    solution sol;
    if(sol.isDiagnol(matrix)){
        cout<<"\n the entred matrix is diagnol matrix";
    }else{
        cout<<"\n the entred matrix is not diagnol matrix";
    }
    cout<<endl;
    return 0;
}