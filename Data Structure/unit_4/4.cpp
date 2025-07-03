//Write a C program to create a tree and search an element from tree.
#include<iostream>
using namespace std;
class Node{
    public:
    int data;
    Node* left;
    Node*right;
    Node(int val){
        data= val;
        left=right=NULL;
    }
};
class tree{
public:
    Node* root;
    tree(){
        root=NULL;
    }
    void insert(Node* &root, int val){
        if(root==NULL){
            root=new Node(val);
            return;
        }
        if(val<root->data){
            insert(root->left,val);
        }else{
            insert(root->right,val);
        }
    }
    bool search(Node* &root, int val){
        if(root==NULL){
            return false;
        }
        if(root->data==val){
            return true;
        }
        else if(val<root->data){
            return search(root->left,val);
        }else{
            return search(root->right,val);
        }
    }
   
};
int main(){
    tree t;
    t.insert(t.root,12);
    t.insert(t.root,2);
    t.insert(t.root,32);
    t.insert(t.root,11);
    t.insert(t.root,41);
    t.insert(t.root,16);
   

    cout<<endl;
    return 0;
    
}