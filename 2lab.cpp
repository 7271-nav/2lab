#include <iostream>
#include <string>

using namespace std;

int main() {
	int array[10] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
	int sum = 0, c = 0, M = 6;
	for (int i = 0; i < 10; i++) {
		if (array[i] > M)
			sum = sum + array[i];
		if (array[i] < M)
			c++;
	}
	return 0;

}
