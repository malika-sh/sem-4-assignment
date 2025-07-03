// Write a CPP program using switch case as below:
// 1. Create a circular single linked list
// 2. Insert a node in the beginning
// 3. Insert a node in the end
// 4. Insert a node in the middle
// 5. Display circular linked list
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
    Node*tail;
    linklist(){
        head=tail=NULL;
    }
    void create(){
        push_back(5);
        push_back(4);
        push_back(3);
        push_back(7);
        push_back(8);
    }
    //2.
    void push_front(int val){
        Node* newNode= new Node(val);
        if(head==NULL){
            head=tail=newNode;
            tail->next=head;
            return;
        }
        newNode->next=head;
        head=newNode;
        tail->next=head;
    }
    //3.
    void push_back(int val){
        Node* newNode=new Node(val);
        if(head==NULL){
            head=tail=newNode;
            tail->next=head;
            return;
        }
        tail->next=newNode;
        tail=newNode;
        tail->next=head;
    }
    //4.
    void middle(int val){
        Node* newNode=new Node(val);
        if(head==NULL){
            head=tail=newNode;
            tail->next=head;
            return;
        }
        Node* slow=head;
        Node* fast=head;

        while(fast->next !=tail &&fast->next->next!=tail){
            slow=slow->next;
            fast=fast->next->next;
        }
        newNode->next=slow->next;
        slow->next=newNode;
    }
};