#include <iostream>
using namespace std;

int main()
{
    int n, m, c, steps, step, i, j;
    int *a, *b;

    cin >> n >> m >> c;

    steps = n - m + 1;
    step  = 0;

    a = new int[n];
    b = new int[m];

    for( i = 0; i < n; i++ )
        cin >> a[i];

    for( i = 0; i < m; i++ )
        cin >> b[i];

    for( i = 0; i < steps; i++ )
    {
        for( j = 0; j < m; j++ )
            a[step + j] = (a[step + j] + b[j]) % c;
        step++;
    }

    for( i = 0; i < n; i++ )
        cout << a[i] << " ";

    delete a;
    delete b;

    return 0;
}
