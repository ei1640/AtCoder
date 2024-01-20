#include <iostream>
#include <algorithm>

using std::cout;
using std::cin;
using std::endl;

using std::min;
using std::max;

int n, k, p;
long long c[111];
int a[111][11];

long long dp[111][1<<10];

int main() {

  for(int i = 0; i < 111; i++){
    for(int j = 0; j < 111; j++){
      dp[i][j] = 1111111111111;
    }
  }
  
  cin>> n >> k >> p;
  for(int i = 0; i < n; i++){
    cin >> c[i];
    for(int j = 0; j < 5; j++){
      cin >> a[i][j];
    }
  }

  for(int i = 0; i < n; i++){
    for(int j = 0; j < (1 << k); j++){
      dp[i][j] = min(min(dp[max(0, i-1)][j], dp[i][max(0, j-1)]), 
  
  return(0);
}
