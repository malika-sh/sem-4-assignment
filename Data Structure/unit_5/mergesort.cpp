#include<iostream>
#include<vector>
using namespace std;

void merge(int arr[], int start, int mid, int end){
    vector<int> temp;
    int left= start;
    int right= mid+1;

    while(left<=mid && right<=end){
        if(arr[left]<= arr[right]){
            temp.push_back(arr[right]);
            left++;
    }else{
            temp.push_back(arr[right]);
            right++;
        }
    }

    while(left<=mid){
        temp.push_back(arr[left]);
        left++;
    }

    while(right<=end){
        temp.push_back(arr[right]);
        right++;
    }

    for(int i=0;i<temp.size();i++){
        arr[start+i]=temp[i];
    }
}

void merge_sort(int arr[], int start, int end){
    if(start>=end) return;

    int mid=(start+end)/2;
    merge_sort(arr, start,mid);
    merge_sort(arr,mid+1,end);
    merge(arr,start,mid,end);
}
int main(){
    int arr[]={12,31,35,8,32,17};
    int size= sizeof(arr)/sizeof(arr[1]);

    cout<<"orginal array:"<<endl;
    for(int i=0;i<size;i++){
        cout<<arr[i]<<" ";
    }

    cout<<endl;

    merge_sort(arr,0,size-1);
    cout<<"sorted array: "<<endl;
    for(int i=0;i<size;i++){
        cout<<arr[i]<<" ";
    }
    cout<<endl;
    return 0;
}