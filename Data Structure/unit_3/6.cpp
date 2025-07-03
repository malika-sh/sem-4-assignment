// //Write a C Program to store marks of 5 subjects in a queue and find the percentage from 
// that value.
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
    Node* tail;
    public:
    list(){
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
    void pop(){
        Node* temp=head;
        head=head->next;
        temp->next=NULL;
        delete tail;
    }
    void print(){
        Node* temp=head;
        while(temp!=NULL){
            cout<<temp->data;
            temp=temp->next;
        }
    }

    void perc(){
        int sum=0;
        Node* temp=head;
        while(temp!=NULL){
            sum+=temp->data;
            temp=temp->next;
        }
        int per=sum/5;
        cout<<"your total percentage of 5 sub is= "<<per<<endl;
    }


};
class queue{
    public:
    list l;
    void push(int val){
        l.push(val);
    }
    void pop(){
        l.pop();
    }
    void print(){
        l.print();
    }
    void percentage(){
        l.perc();
    }
};
int main(){
    queue q;
    q.push(78);
    q.push(99);
    q.push(90);
    q.push(88);
    q.push(89);

    q.print();
    q.percentage();
    cout<<endl;
    return 0;
}