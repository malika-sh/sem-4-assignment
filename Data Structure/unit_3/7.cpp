//Write a C Program to create a stack using an array and find the maximum value out of it.
#include<iostream>
using namespace std;
class stack{
    public:
    int arr[5];
    int front=0;
    int rear=-1;
    int curr=0;
    void push(int val){
        if(curr==5){
            cout<<"overflow"<<endl;
            return;
        }
        rear++;
        arr[rear]=val;
        curr++;
    }
    void print(){
        for(int i=0;i<5;i++){
            cout<<arr[i]<<" ";
        }
        cout<<endl;
    }
    void find_max(){
        int max=0;
        for(int i=0;i<5;i++){
            if(arr[i]>max){
                max=arr[i];
            }
        }
        cout<<"maximum value is= "<<max;
    }

};
int main(){
    stack s1;

    s1.push(34);
    s1.push(55);
    s1.push(89);
    s1.push(56);
    s1.print();
    s1.find_max();
    cout<<endl;
    return 0;
}