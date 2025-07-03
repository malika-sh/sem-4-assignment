//Write a C Program to create a stack using a Linkedlist.
#include<iostream>
using namespace std;
class Node{
    public:
    int data;
    Node* next;
    Node(int val){
        data=val;
        next=NULL;
    }
};
class list{
    Node* head;
    Node* tail;
    public:
   list(){
    head=tail=NULL;
   }
   void push_back(int val){
    Node* newNode=new Node(val);
    if(head==NULL){
        head=tail=newNode;
    }
    tail->next=newNode;
    tail=newNode;
   }
   void print(){
    Node* temp=head;
    while(temp!=NULL){
        cout<<temp->data<<" ";
        temp=temp->next;
    }
    cout<<"NULL"<<endl;
   }
   void pop_back(){
    if(isEmpty()){
        cout<<"is empty";
        return;
    }
    Node* temp=head;
    while(temp->next!=tail){
        temp=temp->next;
    }
    temp->next=NULL;
    delete tail;
    tail=temp;
   }
   bool isEmpty(){
    return head==NULL;
   }

};
class stack{
    public:
    list l;
    void push(int val){
        l.push_back(val);
    }
    void pop(){
        l.pop_back();
    }
    void print(){
        l.print();
    }
};
int main(){
    stack s;
    s.push(1);
    s.push(2);
    s.push(3);
    s.push(4);
    s.print();
    s.pop();
    s.print();
    return 0;
}