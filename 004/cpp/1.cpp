#include <iostream>

using namespace std;

int main(void){

	int w;
	cin >> w;

	cout << ((w % 2 == 0 and w != 2) ? "YES" : "NO");

	return 0;
}