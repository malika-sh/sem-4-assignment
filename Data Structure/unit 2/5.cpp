// Write a CPP program using switch case as below:
//  1. Create a double linked list
//  2. Insert a node in the ending
//  3. Insert a node in the beginning
//  4. Insert a node in the middle
//  5. Display double linked list
#include<iostream>
using namespace std;
class Node{
    public:
    int data;
    Node*next;
    Node* prev;

    Node(int val){
        data=val;
        next=prev=NULL;
    }
};
class linklist{
    public:
    Node* head;
    Node* tail;
    linklist(){
        head=tail=NULL;
    }

    void createll(){
        push_back(1);
        push_back(2);
        push_back(3);
        push_back(4);
        push_back(5);
    }

    //2.
    void push_back(int val){
        Node* newNode= new Node(val);
        if(head==NULL){
            head=tail=newNode;
            return;
        }
        tail->next=newNode;
        newNode->prev=tail;
        tail=newNode;

    }
    //3.
    void push_front(int val){
        Node* newNode= new Node(val);
        if(head==NULL){
            head=tail=newNode;
            return;
        }
        newNode->next=head;
        head->prev=newNode;
        head=newNode;
    }
    //4.
    void push_middle(int val){
        Node* newNode=new Node(val);
        if(head==NULL){
            head=tail=newNode;
            return;
        }
        Node* fast=head;
        Node* slow=head;

        while(fast !=NULL && fast->next!=NULL){
            slow=fast;
            fast=fast->next->next;
        }
        Node*prevNode=slow->prev;
        newNode->next=slow;
        newNode->prev=prevNode;

        if(prevNode !=NULL){
            prevNode->next=newNode;
        }else{
            head=newNode;
        }
        slow->prev=newNode;
    }
};