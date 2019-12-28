#include <iostream>
#include<math.h>
using namespace std;
int binaryNum[32];
int decToBinary(int n) 
{ 
    // array to store binary number 
     
  
    // counter for binary array 
    int i = 0; 
    while (n > 0) { 
  
        // storing remainder in binary array 
        binaryNum[i] = n % 2; 
        n = n / 2; 
        i++; 
    } 
  return i;
    // printing binary array in reverse order 
    //for (int j = i - 1; j >= 0; j--) 
      //  cout << binaryNum[j]; 
} 

void f(float in){
float dec;
int i_int, dec_pt, l, k;
if (in>=0)
 cout<<"0";
else{
 cout<<"1";
 in = -1*in;}
i_int = floor(in);
//cout<<i_int<<"\n";
dec_pt = 4 - decToBinary(i_int);
dec = in - i_int;
//cout<<dec<<"\n";
int b[dec_pt+1];
for(int i=0; i<dec_pt + 1; i++)
 b[i]=0;
k = dec_pt;
while(k!=-1)
{ dec = dec*2.0;
  b[k] = floor(dec);
  dec = dec - b[k];
  k-=1;
}
l = decToBinary(i_int) - 1 + 3;
int expon[3];
expon[0] = l % 2;
l = l/2;
expon[1] = l%2;
l = l/2;
expon[2] = l% 2;
int m = 3; 
while (m >0)
 {cout<<expon[m-1];
 --m;}
for (int j = 2 -dec_pt; j >= 0; j--) 
      cout << binaryNum[j]; 
for (int j = dec_pt; j>=0; j--)
      cout<<b[j];
}

int binary[32];
int decToBinary16(int n) 
{ 
    // array to store binary number 
     
  
    // counter for binary array 
    int i = 0; 
    while (n > 0) { 
  
        // storing remainder in binary array 
        binary[i] = n % 2; 
        n = n / 2; 
        i++; 
    } 
  return i;
    // printing binary array in reverse order 
    //for (int j = i - 1; j >= 0; j--) 
      //  cout << binaryNum[j]; 
} 

void g(float in){
float dec;
int i_int, dec_pt, l, k;
if (in>=0)
 cout<<"0";
else{
 cout<<"1";
 in = -1*in;}
i_int = floor(in);
//cout<<i_int<<"\n";
dec_pt = 9 - decToBinary16(i_int);
dec = in - i_int;
//cout<<dec<<"\n";
int b[dec_pt+1];
for(int i=0; i<dec_pt + 1; i++)
 b[i]=0;
k = dec_pt;
while(k!=-1)
{ dec = dec*2.0;
  b[k] = floor(dec);
  dec = dec - b[k];
  k-=1;
}
l = decToBinary16(i_int) - 1 + 15;
int expon[5];
expon[0] = l % 2;
l = l/2;
expon[1] = l%2;
l = l/2;
expon[2] = l% 2;
l = l/2;
expon[3] = l% 2;
l = l/2;
expon[4] = l% 2;
int m = 5; 
while (m >0)
 {cout<<expon[m-1];
 --m;}
 for (int j = 7 -dec_pt; j >= 0; j--) 
      cout << binary[j];
 for (int j = dec_pt; j>=0; j--)
      cout<<b[j];
 cout<<"0";

}
int main(){
float i = 31, j;
while(i >= -31)
{ 
 j = 31;
 while(j>=-31)
  {
   f(i);
   f(j);
   cout<<" ";
   g(i*j);
   cout<<" ";
   cout<<"1111111111111111\n";
  j = j - 0.125;
  }
 i = i-1;
}
return 0;
}
