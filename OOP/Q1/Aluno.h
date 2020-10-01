#include "Pessoa.h"

#ifndef OOP_ALUNO_H
#define OOP_ALUNO_H
class Aluno: public Pessoa{
public:
    enum Nivel { INDEFINIDO, GRADUACAO, ESPECIALIZACAO, MESTRADO, DOUTORADO };
    Aluno();

    Aluno(std::string, Sexo, time_t, std::string, Nivel);

    Aluno(const Aluno& outro);

    Aluno& operator=(const Aluno& outro);

    const std::string get_codigo() const;
    void set_codigo(std::string codigo);

    const Nivel get_nivel() const;
    void set_nivel(Nivel nivel);

    std::string toString();

private:
    std::string codigo;
    Nivel nivel;
};
#endif //OOP_ALUNO_H
