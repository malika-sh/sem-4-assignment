//Write a C program to create a tree and perform Inorder on it.
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
            root=new Node(val);
            return;
        }
        if(val<root->data){
            insert(root->left,val);
        }else{
            insert(root->right,val);
        }
    }
    void inorder(Node* root){
        if(root==NULL){
            return;
        }
        inorder(root->left);
        cout<<root->data<<" ";
        inorder(root->right);
    }
};
int main(){
    tree t;
    t.insert(t.root,12);
    t.insert(t.root,11);
    t.insert(t.root,10);
    t.insert(t.root,4);
    t.inorder(t.root);

    cout<<endl;
    return 0;
}