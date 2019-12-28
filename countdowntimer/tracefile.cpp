#include <bits/stdc++.h>
#include <ext/pb_ds/tree_policy.hpp>
#include <ext/pb_ds/assoc_container.hpp>
using namespace __gnu_pbds;
using namespace std;
#define forstl(i,v) for(auto &i: v)
#define forn(i,e) for(int i = 0; i < e; i++)
#define forsn(i,s,e) for(int i = s; i < e; i++)
#define rforn(i,s) for(int i = s; i >= 0; i--)
#define rforsn(i,s,e) for(int i = s; i >= e; i--)
#define testcases(t) int t,myzx;cin>>myzx;forsn(t,1,myzx+1) 
#define clz(a) __builtin_clz(a) // count leading zeroes
#define ctz(a) __builtin_ctz(a) // count trailing zeroes
#define popc(a) __builtin_popcount(a) // count set bits 
#define ln "\n"
#define kyahai(args...) { string _s = #args; replace(_s.begin(), _s.end(), ',', ' '); \
stringstream _ss(_s); istream_iterator<string> _it(_ss); err(_it, args); cout<<ln; }
void err(istream_iterator<string> it) {}
template<typename T, typename... Args>
void err(istream_iterator<string> it, T a, Args... args) {
	cerr << *it << " = " << a << "\t\t";
	err(++it, args...);
}
#define mp make_pair
#define pb push_back
#define fi first
#define se second
#define all(n) n.begin() , n.end() 
#define tfi first.first
#define tse first.second
#define tth second
typedef long long ll;
typedef long double ld;
typedef pair<int,int> p32; 
typedef pair<ll,ll> p64;
typedef pair<double,double> pdd;
typedef vector<ll> v64;
typedef vector<int> v32;
typedef vector<vector<int> > vv32;
typedef vector<p64> vp64;
typedef vector<p32> vp32;
typedef map<int,int> m32;
typedef pair< pair<int,int> , int> tri;
typedef tree<int,null_type,less<int>,rb_tree_tag,tree_order_statistics_node_update> ordered_set; 
//like set just find_by_order() and order_of_key() are extra

#pragma GCC optimize ("-O3")
template < typename tp > void in( tp & dig ){
    char ch=getchar();dig=0;ll flag=0;
    while(!isdigit(ch)){ if(ch=='-')flag=1;ch=getchar(); }
    while(isdigit(ch))dig=dig*10+ch-'0',ch=getchar();
    if(flag)dig=-dig;
}
const int LIM = 2e5+5 ,MOD = 1e9+7;
const double EPS = 1e-9;
int n , m , t , x ,y ;


void pr(int rst,int start,int a,int b,int clk = 2,int msk = 0){
	if(clk == 2){
		pr(rst,start,a,b,1,msk);
		pr(rst,start,a,b,0,msk);
	}else{
		cout<<rst<<clk<<start;
		cout<<bitset<4>(a);
		cout<<bitset<4>(b);
		cout<<" ";
		cout<<msk;
		cout<<bitset<8>(a*b);
		cout<<" ";
		if(msk & clk == 1) cout<<"111111111";
		else cout<<"000000000";
		cout<<ln;
	}
}

void qw(int a,int b){
	pr(0,1,a,b);
	forn(i,3) pr(0,0,a,b);
	pr(0,0,a,b,2,1);
	pr(0,0,0,0);
}
int main(){
	ios_base::sync_with_stdio(false);cin.tie(0);cout.tie(0);
	pr(1,0,0,0);
	forn(i,16) forn(j,16){
		qw(i,j);
		if(i+j == 13){
			forn(i,2){
				pr(0,0,6,7);
			}
		}
		if(i+j == 15){
			pr(1,0,0,0);
		}
	}

}
