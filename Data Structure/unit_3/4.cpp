//Write a C Program to create a queue using Linkedlist.
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
    Node*head;
    Node*tail;
    public:
    list(){
        head=tail=NULL;
    }
    void push(int val){
        Node* newNode=new Node(val);
        if(head==NULL){
            head=tail=newNode;
            return;
        }
        tail->next=newNode;
        tail=newNode;
    }
    void pop_front(){
        if(isEmpty()){
            cout<<"is empty";
            return;
        }
        Node* temp=head;
        head=head->next;
        temp->next=NULL;
        delete temp;
    }
    void print(){
        Node* temp=head;
        while(temp!=NULL){
            cout<<temp->data<<" ";
            temp=temp->next;
        }
        cout<<endl;
    }
    bool isEmpty(){
        return head==NULL;
    }

};
class queue{
    public:
    list l;
    void push(int val){
        l.push(val);
    }
    void print(){
        l.print();
    }
    void pop(){
        l.pop_front();
    }
};
int main(){
    queue q;
    q.push(3);
    q.push(4);
    q.push(6);
    q.push(2);
    q.push(9);
    q.print();
    q.pop();
    q.print();
    cout<<endl;
    return 0;
}