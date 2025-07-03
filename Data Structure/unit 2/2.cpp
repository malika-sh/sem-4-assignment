// Write a CPP program using switch case as below:
//  1. Create a single linked list 
// 2. Display single linked list
//  3. Delete the 3rd Node from the  Linkedlist 
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
        head=NULL;
        tail=NULL;
    }
    void push(int val){
        Node* newNode=new Node(val);
        if(head==NULL){
            head=tail=newNode;
        }
        tail->next=newNode;
        tail=newNode;
    }

    void print(){
        if(head==NULL){
            cout<<"linked list is empty";
            return;
        }
        Node* temp=head;
        cout<<"linked list: "<<endl;
        while(temp!=NULL){
            cout<<temp->data<<"->";
            temp=temp->next;
        }
        cout<<"NULL";
    }

    void del(){
        if(head==NULL){
            cout<<"linked list is empty";
            return;
        }
        Node* temp=head;
        Node*prev=head;
        int count=1;

        while(temp!=NULL && count<3){
            prev=temp;
            temp=temp->next;
            count++;
        }
        if(temp==NULL){
            cout<<"linked list has less than 3 nodes"<<endl;
            return;
        }
        prev->next=temp->next;
        temp->next=NULL;
        delete temp;
    }
};
int main(){
    int choice,value;
    linklist ll;
    do{
        cout<<"----menu------"<<endl;
        cout << "1. insert into liked list" << endl;
        cout << "2. Display linked list" << endl;
        cout << "3. delete 3rd node from linked list"<< endl;
        cout<< "Enter your choice: ";
        cin >> choice;
        switch(choice){
            case 1:
            cout<<"enter the value to insert:";
            cin>>value;
            ll.push(value);
            break;

            case 2:
            ll.print();
            break;

            case 3:
            ll.del();
            break;

        case 4:
            cout << "Exiting..." << endl;

        default: 
            cout << "Wrong choice entered. Enter again!" << endl;
            break;
        }
    }while (choice != 4);

    cout<<endl;
    return 0;

}
