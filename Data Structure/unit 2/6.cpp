// Write a CPP program using switch case as below:
// 1. Create a double linked list
// 2. Delete a node from the begining
// 3. Delete a node from the end 
// 4. Delete a node in the middle
// 5. Display double linked list
#include<iostream>
using namespace std;
class Node{
    public:
    int data;
    Node*next;
    Node*prev;
    Node(int val) {
        data = val;
        next = NULL;
        prev = NULL;
    }

};
class linklist{
public:
Node* head;
Node* tail;

linklist() {
    head = tail = NULL;
}

// 1. create a doubly linked list
void createLL() {
    push_back(1);
    push_back(2);
    push_back(3);
    push_back(4);
    push_back(5);
}

void push_back(int val){
    Node* newNode=new Node(val);
    if(head==NULL){
        head=tail=newNode;
        return;
    }
    tail->next=newNode;
    newNode->prev=tail;
    tail=newNode;
}
//2.
void pop_front(){
    if(head==NULL){
        cout<<"linked list is empty"<<endl;
        return;
    }
    Node* temp=head;
    head->next->prev=head;
    head=head->next;
    delete temp;


}
//3.
void pop_back(){
    if(head==NULL){
        cout<<"linked list is empty"<<endl;
        return;
    }
    Node* prevpointer =tail->prev;
    prevpointer->next=NULL;
    tail->prev=NULL;
    delete tail;
    tail=prevpointer;
}
//4.
void pop_middle(){
    if(head==NULL){
        cout<<"linked list is empty"<<endl;
        return;
    }
    Node* fast=head;
    Node* slow=head;

    while(fast!=NULL && fast->next!=NULL){
        slow=fast;
        fast=fast->next->next;
    }
    Node* prevNode=slow->prev;
    Node* nextNode= slow->next;

    prevNode->next=nextNode;
    nextNode->prev=prevNode;
    delete slow;
}
};