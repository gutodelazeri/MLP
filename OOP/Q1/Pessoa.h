//
// Created by Gustavo Delazeri on 01/10/20.
//
#include <iostream>
#include <string>
#include <ctime>

#ifndef OOP_PESSOA_H
#define OOP_PESSOA_H
class Pessoa{
public:
    enum Sexo { INDEFINIDO, MASCULINO, FEMININO };

    Pessoa(); // Construtor padrão
    Pessoa(std::string, Sexo, time_t); // Construtor alternativo
    Pessoa(const Pessoa& outra); // // construtor de cópia

    Pessoa& operator=(const Pessoa& outra);

    time_t get_dtnascimento() const;
    void set_dtnascimento(time_t dtnascimento);

    std::string get_nome() const;
    void set_nome(std::string nome);

    Sexo get_sexo() const;
    void set_sexo(Sexo sexo);

    // Modificação descrita em readme.txt
    virtual std::string toString();

private:
    time_t dtnascimento;
    std::string nome;
    Sexo sexo;
};
#endif //OOP_PESSOA_H
