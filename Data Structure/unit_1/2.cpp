// Write a CPP program to create a single dimensional array, pass that array to a user 
// defined function and print it.
#include<iostream>
using namespace std;
class solution{
    public:
    void Display(int* arr, int n){
        for(int i=0;i<n;i++){
            cout<<"array["<<i+1<<"]= "<<arr[i]<<endl;
        }
    }
};
int main(){
    solution sol;
    int length;
    int arr[length];

    for(int i=0;i<length;i++){
        cout<<"a["<<i+1<<"]: ";
        cin>>arr[i];
    }
    cout<<"\n pricing the array:"<<endl;

    sol.Display(arr,length);
    cout<<endl;
    return 0;
}