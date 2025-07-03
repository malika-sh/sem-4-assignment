// Write a CPP program using switch case as below:
//  1. Create a single linked list
//  2. Insert a node in the middle
//  3. Insert a node in the beginning
//  4. Insert a node in the end
//  5. Display single linked list
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
class linklist{
    public:
    Node* head;
    Node* tail;
    linklist(){
        head=tail=NULL;
    }
    void push(int val){
        Node* newNode=new Node(val);

        if(head==NULL){
            head=tail=newNode;
        }
        tail->next=newNode;
        tail=newNode;
    }
    //insert in middle
    void middle(int val){
        Node* newNode= new Node(val);
        if(head==NULL){
            head=tail=newNode;
            return;
        }
        Node* slow=head;
        Node* fast=head;

        while(fast !=NULL && fast->next!=NULL){
            slow=slow->next;
            fast=fast->next->next;
        }
        newNode->next=slow->next;
        slow->next=newNode;
    }
    //insert in the beginning
    void beginning(int val){
        Node* newNode= new Node(val);
        if(head==NULL){
            head=tail=newNode;
            return;
        }
        newNode->next=head->next;
        head=newNode;
    }
    
    void print(){
        if(head==NULL){
            cout<<"the list is empty"<<endl;
            return;
        }
        Node* temp=head;
        cout<<"\n link list"<<endl;
        while(temp!=NULL){
            cout<<temp->data<<"->";
            temp=temp->next;

        }
        cout<<"NULL";
    }
};