//
// Created by Gustavo Delazeri on 01/10/20.
//
#include "Pessoa.h"
#include "Aluno.h"


#ifndef OOP_FUNCIONARIO_H
#define OOP_FUNCIONARIO_H
class Funcionario: public Pessoa {
public:
    enum Cargo { INDEFINIDO, PROGRAMADOR, ANALISTA, GERENTE, DIRETOR};
    Funcionario();
    Funcionario(std::string nome, Sexo sexo, time_t dtnascimento, Cargo cargo, double salario);
    Funcionario(const Funcionario& outro);

    Funcionario& operator=(const Funcionario& outro);

    Cargo get_cargo() const;
    double get_salario() const;
    void set_cargo(Cargo cargo);
    void set_salario(double salario);

    std::string toString();
private:
    Cargo cargo;
    double salario;
};
#endif //OOP_FUNCIONARIO_H
