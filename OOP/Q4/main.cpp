#include <iostream>
#include <vector>
#include <random>

using namespace std;

#include "Pessoa.h"
#include "Aluno.h"
#include "Funcionario.h"

#define SIZE 10


template<class T>
int lomutoPartition(vector<T*> &vec, int pivot_index, int start , int end) {
    T pivot = *vec[pivot_index];
    swap(vec[end], vec[pivot_index]);
    int leftIndex = start;
    int rightIndex = end - 1;

    while (leftIndex <= rightIndex) {

        while(leftIndex < end && *vec[leftIndex] <= pivot)
            leftIndex++;
        while(rightIndex >= 0 && *vec[rightIndex] > pivot)
            rightIndex--;
        if(leftIndex < rightIndex) {
            swap(vec[leftIndex], vec[rightIndex]);
            leftIndex++;
            rightIndex--;
        }
        else
            break;
    }

    swap(vec[end], vec[leftIndex]);
    return leftIndex;
}
template<class T>
void quickSort(vector<T*> &vec, int start = 0, int end = -2) {
    end = end == -2? vec.size() - 1 : end;
    if(start >= end)
        return;
    else{
        int pivot_index = lomutoPartition(vec, start, start, end);
        quickSort(vec, start, pivot_index-1);
        quickSort(vec, pivot_index + 1, end);
    }
}

int main() {
    vector<Pessoa *> vetor;

    random_device device;
    mt19937 mt(device());
    // Used to choose which class will be instantiated (Pessoa, Aluno ou Funcionario)
    uniform_int_distribution<int> dist1(1, 3);
    // Used to name the objects
    uniform_int_distribution<int> dist2(0, 1000);

    for (int i = 0; i < SIZE; i++) {
        int op = dist1(mt);
        if (op == 1)
            vetor.push_back(new Pessoa("a" + to_string(dist2(mt)), Pessoa::INDEFINIDO, time(nullptr)));
        else if (op == 2)
            vetor.push_back(new Aluno("b" + to_string(dist2(mt)), Pessoa::INDEFINIDO, time(nullptr), "123", Aluno::GRADUACAO));
        else if (op == 3)
            vetor.push_back(new Funcionario("c" + to_string(dist2(mt)), Pessoa::INDEFINIDO, time(nullptr), Funcionario::PROGRAMADOR, 1000));
        else {
            cerr << "Something bad happened :(" << endl;
            exit(1);
        }
    }

    quickSort(vetor);

    for(auto p : vetor)
        cout << p->get_nome() <<  endl;
}

