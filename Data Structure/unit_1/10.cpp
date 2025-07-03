//Write a CPP program to sum all the diagonal element.
#include<iostream>
using namespace std;
class solution{
    public:
    void print(int mat[][10], int size){
        int sum=0;
        cout<<"\n printing the sum of diagnol element:"<<endl;
        for(int i=0;i<size;i++){
            for(int j=0;j<size;j++){
                if(i==j){
                    sum+=mat[i][j];
                }else{
                    continue;
                }
            }
        }
        cout<<"\n the sum of the all diagnol elements= "<<sum<<endl;
    }
};
int main(){
    int size;
    cout<<"\n enter the size of the matrix:";
    cin>>size;

    int mat[10][10];
    for(int i=0;i<size;i++){
        for(int j=0;j<size;j++){
            cout<<"a["<<i+1<<"]["<<j<<"]:";
            cin>>mat[i][j];
        }
        
    }
    cout<<"\n the entered values are:"<<endl;
    for(int i=0;i<size;i++){
        for(int j=0;j<size;j++){
            cout<<"a["<<i+1<<"]["<<j<<"]= "<<mat[i][j]<<"\t";
        }
        cout<<endl;
    }
    solution sol;
    sol.print(mat,size);

    cout<<endl; 
    return 0;
}