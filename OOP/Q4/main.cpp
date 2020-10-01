#include <iostream>
#include <vector>
#include <random>

using namespace std;

#include "Pessoa.h"
#include "Aluno.h"
#include "Funcionario.h"

#define SIZE 10

template<class T>
void sort(vector<T *> vec) {

    T* pivot = vec[0];

}

int main() {
    vector<Pessoa *> vetor;

    random_device device;
    mt19937 mt(device());
    uniform_int_distribution<int> dist(1,3);


    for(int i = 0; i < SIZE; i++){
        int op = dist(mt);
        if(op == 1)
            vetor.push_back(new Pessoa());
        else if(op == 2)
            vetor.push_back(new Aluno());
        else if(op == 3)
            vetor.push_back(new Funcionario());
        else {
            cerr << "Something bad happened :(" << endl;
            exit(1);
        }
    }
}
