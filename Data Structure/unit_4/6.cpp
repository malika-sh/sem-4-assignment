//Write a C program to create a tree and find maximum value of it.
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
   int find_max(Node* root){
    if(root==NULL){
        return 0;
    }
    int leftmax= find_max(root->left);
    int rightmax= find_max(root->right);

    return max(root->data, max(leftmax,rightmax));
   }
};
int main(){
    tree t;
    t.insert(t.root,10);
    t.insert(t.root,11);
    t.insert(t.root,45);
    t.insert(t.root,32);
    t.insert(t.root,15);

    cout<<"The maximum= "<<t.find_max(t.root);
    cout<<endl;
    return 0;
}