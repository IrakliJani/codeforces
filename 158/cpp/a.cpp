#include <iostream>
using namespace std;

int main()
{
    int n, k, i, *pts, count = 0;

    cin >> n >> k;

    pts = new int[n];

    for( i = 0; i < n; i++ )
        cin >> pts[i];
    k--;
    

    if( pts[k] > 0 )
    {
        count = k;

        for( i = k; i < n; i++ )
        {
            if( pts[i] == pts[k] )
                count++;
            else
                break;
        }
    }
    else
    {
        for( i = 0; i < n; i++ )
        {
            if( pts[i] > 0 )
                count++;
            else
                break;
        }
    }

    cout << count;

    return 0;
}
