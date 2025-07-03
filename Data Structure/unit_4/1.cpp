//Write a C program to create a tree and perform Preorder on it.
#include<iostream>
using namespace std;
class Node{
    public:
    int data;
    Node* left;
    Node* right;
    Node(int val){
        data=val;
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
        root= new Node(val);
        return;
    }
    if(val<root->data){
        insert(root->left, val);
    }else{
        insert(root->right, val);
    }
   }
   void preorder(Node* root){
    if(root==NULL){
        return;
    }
    cout<<root->data<<" ";
    preorder(root->left);
    preorder(root->right);
   }
};
int main(){
    tree t;
    t.insert(t.root,10);
    t.insert(t.root,11);
    t.insert(t.root,12);
    t.insert(t.root,5);
    t.preorder(t.root);

    cout<<endl;
    return 0;
}