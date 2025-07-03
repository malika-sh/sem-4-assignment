// Write a CPP program using switch case as below:
//  1. Create a single linked list (Sorted Linked List)
//  2. Display single linked list
//  3. Remove the duplicate value (if any) 
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
    Node* head;
    public:
    linklist(){
        head=NULL;
    }

    //1.
    void insertsorted(int val){
        Node* newNode=new Node(val);
        if(head==NULL||val< head->data){
            newNode->next= head;
            head= newNode;
            return;
        }

        Node* temp= head;
        while(temp->next !=NULL && temp->next->data<val){
            temp= temp->next;
        }
        newNode->next= temp->next;
        temp->next= newNode;
    }

    void display(){
        if(head==NULL){
            cout<<"\n link list is empty"<<endl;
            return;
        }
        cout<<"linked list:"<<endl;
        Node* temp=head;
        while(temp!=NULL){
            cout<<temp->data<<" -> ";
            temp= temp->next;
        }
        cout<<"NULL"<<endl;
    }

    void duplicate(){
        if(head==NULL){
            cout<<"\n link list s empty"<<endl;
            return ;
        }
        Node* curr=head;
        if(curr->next!=NULL){
            if(curr->data==curr->next->data){
                Node* dupli =curr->next->next;
                delete dupli;
            }else{
                curr=curr->next;
            }
        }
    }
};
int main(){
    int op,val;
    linklist list;
    do{
        cout<<"----------menu---------"<<endl;
        cout<<"1.insert into sorted liked list"<<endl;
        cout<<"2.display sorted liked list"<<endl;
        cout<<"3.remove duplicate values"<<endl;
        cout<<"4.exit"<<endl;

        cout<<"enter the choice";
        cin>>op;
        switch(op){
            case 1:
            cout<<"enter the value to insert:";
            cin>>val;
            list.insertsorted(val);
            break;

            case 2:
            list.display();
            break;

            case 3:
            list.duplicate();
            break;

            case 4:
            cout<<"existing"<<endl;
            break;
            default:
            cout<<"invalid choice"<<endl;
        }
    }while(op!=4);
    cout<<endl;
    return 0;
}