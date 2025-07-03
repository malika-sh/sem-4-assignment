// Write a C program to create a tree and perform Postorder on it.
#include<iostream>
using namespace std;
class Node{
    public:
    int data;
    Node*left;
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
            insert(root->left,val);
        }else{
            insert(root->right,val);
        }
    }
    void postorder(Node* root){
        if(root==NULL){
            return;
        }
        postorder(root->left);
        postorder(root->right);
        cout<<root->data<<" ";
    }
};
int main(){
    tree t;
    t.insert(t.root,20);
    t.insert(t.root,11);
    t.insert(t.root,23);
    t.insert(t.root,12);
    t.insert(t.root,3);
    t.postorder(t.root);
    cout<<endl;
    return 0;
}