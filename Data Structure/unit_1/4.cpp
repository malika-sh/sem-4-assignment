// Write a CPP program to create a class named Student with data : No, Name and 
// Addresss.
//  Create 3 objects of Student structure. Get the value of structure variable from user and 
// print it.
#include<iostream>
using namespace std;

class student{
    private:
    int rollno;
    string name;
    string address;

    public:
    void getvalues(int r, string n, string a){
        rollno=r;
        name=n;
        address=a;
    }

    void display(){
        cout<<"name= "<<name;
        cout<<"Roll no="<<rollno;
        cout<<"Address= "<<address;
    }
};
int main(){

    student stu[3];
    int rollno;
    string name,address;
    cout<<"\n Enter the values for 3 students:"<<endl;
    
    for(int i=0;i<3;i++){
        cout<<"\n for "<<i+1<<": "<<endl;

        cout<<"\n Nmae: ";
        getline(cin,name);

        cout<<"\n roll no:";
        cin>>rollno;

        cin.ignore();

        cout<<"\n address: ";
        getline(cin,address);

        stu[i].getvalues(rollno,name,address);
    }

    cout<<"\n printing the enetred values: "<<endl;
    for(int i=0;i<3;i++){
        cout<<"\nFor"<<i+1<<": "<<endl;
        stu[i].display();
    }
    cout<<endl;
    return 0;
}