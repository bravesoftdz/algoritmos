#include <iostream>
using namespace std;

int main(){	
    int A[6] = {8,2,7,6,9,5};
	for(int j = 1;j < 6; j++){
		int key = A[j]; 
		int i = j - 1;  
		while(i > -1 and A[i] > key){
			A[i + 1] = A[i];	
			i = i - 1;
		}
		A[i + 1] = key;
	}
	for(int i = 0; i < 6; i++){
		cout << i << " - " << A[i] << "\n";
	}
}