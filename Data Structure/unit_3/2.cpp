//Write a C Program to create a queue using an array and sort it.
#include<iostream>
using namespace std;
class queue{
    public:
   int arr[10];
   int head=-1;
   int tail=-1;

   void push_back(int val){
    if(head==9){
        cout<<"overflow"<<endl;
        return;
    }
    if(head==-1){
        head=0;
    }
    tail++;
    arr[tail]=val;
   }
   void pop_front(){
    if(head==-1||head>tail){
        cout<<"underflow"<<endl;
        return;
    }
    head++;
   }
   int front(){
    if(head==-1||head>tail){
        cout<<"underflow"<<endl;
        return -1;
    }
    return arr[head];
   }
   bool isEmpty(){
    return head==-1||head>tail;
   }

   void sort(){
    int temp;
    for(int i=head; i<=tail; i++){
        for(int j=i+1; j<=tail; j++){
            if(arr[i]<arr[j]){
                temp=arr[i];
                arr[i]=arr[j];
                arr[j]=temp;
            }
        }
    }
   }
   void print(){
    for(int i=head; i<=tail; i++){
        cout<<arr[i]<<" ";
    }
    cout<<endl;
   }
};
int main(){
    queue q1;

    q1.push_back(7);
    q1.push_back(2);
    q1.push_back(4);
    q1.push_back(3);

    q1.print();
    q1.sort();
    q1.print();

    cout<<endl;
    return 0;
}
