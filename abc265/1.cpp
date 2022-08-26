#include <iostream>
using namespace std;

int main(){

    int x, y, n, ans;

    cin >> x >> y >> n;

    if ( y / 3 > x ) {
        ans = x * n;
    } else {
        ans = y * ( n / 3 );
        ans += x * ( n % 3);
    }

    cout << ans << endl;

    return(0);
}