//Write a CPP  program that will display an array in reverse order.
#include<iostream>
using namespace std;
class solution{
    public:
};
int main(){
    int len;
    cout<<"Enter the length of array:"<<endl;
    cin>>len;

    int arr[len];
    for(int i=0;i<len;i++){
        cout<<"a["<<i+1<<"]: ";
        cin>>arr[i];
    }

    cout<<"\n Array before the reverse:"<<endl;
    for(int i=0;i<len;i++){
        cout<<"a["<<i<<"]: "<<arr[i]<<endl;
    }

    int count;
    cout<<"\nArray after the reverse"<<endl;
    for(int i=len-1;i>=0;i--){
        cout<<"a["<<i<<"]: "<<arr[i]<<endl;

    }
    cout<<endl;

    return 0;
}