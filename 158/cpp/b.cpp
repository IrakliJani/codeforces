#include <algorithm>
#include <iostream>
#include <vector>
using namespace std;

#define echo cout <<
#define nl   endl
#define br   endl

int main()
{
    int n, i, count;

    vector<int> groups;

    cin >> n;

    groups = vector<int>( n );

    for( i = 0; i < n; i++ )
        cin >> groups[i];

    sort( groups.rbegin(), groups.rend() );

    size_t j = groups.size() - 1;

    for( size_t i = 0; i < groups.size(); i++ )
    {
        if( i == j )
        {
            count++;
            break;
        }

        if( groups[i] + groups[j] > 4 )
            count++;
        else
        {
           groups[i] += groups[j];
           j--;
           i--;
        }
    }

    echo count;

    return 0;
}
