//Write a CPP program to represent sparse matrix in Triplet Representation.
#include<iostream>
using namespace std;
int main(){
    int matrix[3][3];
    cout<<"\n enter the value of matrix:";
    int count=0;

    cout<<"\n enter the values:"<<endl;
    for(int i=0;i<3;i++)
    {
        for(int j=0;j<3;j++){
            cout<<"a["<<i+1<<"]["<<j<<"]: ";
            cin>>matrix[i][j];
        }
        cout<<endl;
    }

    cout<<"\n entered values are: "<<endl;
    for(int i=0;i<3;i++){
        for(int j=0;j<3;j++){
            cout<<"a["<<i+1<<"]["<<j+1<<"] ="<<matrix[i][j]<<"\t";
            if(matrix[i][j]==0){
                count++;
            }
        }
        cout<<endl;
    }
    if(count>((3*3)/2)){
        int nonzero=(9)-count;
        int tripletmat[3][nonzero];

        int k;

        cout<<"\n the sparse matrix representation:"<<endl;
        for(int i=0;i<3;i++){
            for(int j=0;j<3;j++){
                if(matrix[i][j]!=0){
                    tripletmat[0][k]=i;
                    tripletmat[1][k]=j;
                    tripletmat[2][k]=matrix[i][j];
                    k++;
                }
            }
        }
        cout<<"\n row\tcoulmn\tvalue "<<endl;
        for(int i=0;i<3;i++){
            cout<<tripletmat[0][i]<<tripletmat[1][i]<<tripletmat[2][i]<<endl;
        }
        cout<<endl;
    }else{
        cout<<"\n the entered matrix is not sparse matrix";
    }
    cout<<endl;
    return 0;
}