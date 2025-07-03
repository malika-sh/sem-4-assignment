// Write a CPP program to count the length of the Double Linkedlist.
#include<iostream>
using namespace std;
class Node{
public:
int data;
Node*next;
Node* prev;
Node(int val){
    data=val;
    prev=next=NULL;
}
};
class linklist{
    public:
    Node*head;
    Node* tail;
    linklist(){
        head=tail=NULL;
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

    int lenght(){
        if(head==NULL){
            cout<<"link list is empty"<<endl;
            return 0;
        }
        Node* temp=head;
        int count=0;
        while(temp!=NULL){
            count++;
            temp=temp->next;
        }
        return count;
    }
};