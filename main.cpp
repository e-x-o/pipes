#include <unistd.h>
#include <iostream>

using namespace std;
int size_ = 0;
int counter = 0;

bool Prime(int n) {
    for (int i = 2; i <= n / 2; i++) {
        if (n % i == 0)
            return false;
    }
    return true;
}

void childProc(int readPipe, int writePipe) {
    int a, b, number, position = 0, dimension = 0;
    int primeNumber[200];
    read(readPipe, &a, sizeof(a));
    read(readPipe, &b, sizeof(b));
    for (int i = a; i < b; i++) {
        number = Prime(i);
        if (number == true) {
            primeNumber[position] = i;
            position = position + 1;
            dimension = dimension + 1;
        }
    }
    size_ = dimension;
    write(writePipe, &dimension, sizeof(dimension));
    write(writePipe, primeNumber, sizeof(primeNumber));
    exit(1);
}


void parentProc(int readPipe, int writePipe) {
    int a, b;
    int primeNumber[200];
    a = (counter - 1) * 1000;
    b = counter * 1000;
    write(writePipe, &a, sizeof(int));
    write(writePipe, &b, sizeof(int));
    read(readPipe, &size_, sizeof(size_));
    read(readPipe, &primeNumber, sizeof(primeNumber));
    for (int i = 0; i < size_; i++) {
        cout << primeNumber[i] << " ";
    }
    cout << endl;
}

int main() {
    int firstPipe[2];
    int secondPipe[2];
    int pid = 1;
    for (int i = 0; i < 10; i++) {
        pid = fork();
        counter = counter + 1;
        if (pid) {
            if (pid == -1) {
                cout << "The process child couldn't be created!" << endl;
                return 0;
            }
            parentProc(secondPipe[0], firstPipe[1]);
        } else {
            childProc(firstPipe[0], secondPipe[1]);
        }
    }
    return 0;
}
