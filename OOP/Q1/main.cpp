#include "Pessoa.h"
#include "Aluno.h"
using namespace std;

int main() {
    Pessoa* p1 = new Pessoa("Ana Paula", Pessoa::FEMININO, time(0));
    Pessoa* p2 = new Aluno("Jose Silva", Pessoa::FEMININO, time(0), "01001010", Aluno::GRADUACAO);
    cout << p1->toString();
    cout << p2->toString();
}
