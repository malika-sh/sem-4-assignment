//Write a C Program to create circular queue using an array.
#include<iostream>
using namespace std;
class circularqueue{
public:
   int arr[3];
   int curr_size=0;
   int front=0;
   int cap=3;
   int rear=-1;
   void push(int val){
    if(curr_size==cap){
        cout<<"array is full";
        return;
    }
    rear=(rear+1)%cap;
    arr[rear]=val;
    curr_size++;
   }
   void pop_front(){
    front=(front+1)%cap;
    curr_size--;
   }
   int top(){
    return arr[front];
   }
   void print(){
    int i=front;
    int count;
    while(count<curr_size){
        cout<<arr[i]<<" ";
        i=(i+1)%cap;
        count++;
    }
    cout<<endl;
   }
};
int main(){
    circularqueue q;
    q.push(23);
    q.push(12);
    q.push(34);
    

    q.print();
    q.pop_front();
    q.print();

    cout<<endl;
    return 0;
}