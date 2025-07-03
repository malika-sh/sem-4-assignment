#include<iostream>
using namespace std;
int binarysearch(int arr[],int target, int size){
    int start=0;
    int end=size-1;
    while(start<=end){
        int mid=(start+end)/2;
        if(target==arr[mid]){
            return mid;
        }else if(target> arr[mid]){
            start= mid+1;
        }else{
            end=mid-1;
        }
    }
    return -1;
}
int main(){
    int arr1[]={-1,0,3,4,5,9,12};
    int tar1=7;
    int size1=12;
    cout<<binarysearch(arr1,tar1,size1);

    int arr2[]={-1,0,3,5,9,12};
    int size2=6;
    int tar2=2;
    cout<<binarysearch(arr2,tar2,size2);
    cout<<endl;
    return 0;
}