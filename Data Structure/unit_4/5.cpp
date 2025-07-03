//Write a C program to create a tree and sum all the values of Tree elements.
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
        }
        else{
            insert(root->right,val);
        }
    }
    int sumtree(Node* root){
        if(root==NULL){
            return 0;
        }
        return root->data + sumtree(root->left)+ sumtree(root->right);
    }

};
int main(){
    tree t;
    t.insert(t.root,10);
    t.insert(t.root,11);
    t.insert(t.root,4);
    t.insert(t.root,6);
    t.insert(t.root,14);
    cout<<"sum= "<<t.sumtree(t.root);

    cout<<endl;
    return 0;

}
