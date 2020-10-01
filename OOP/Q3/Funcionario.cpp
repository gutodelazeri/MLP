#include "Funcionario.h"

Funcionario::Funcionario() {
    this->set_nome("Indefinido");
    this->set_sexo(Pessoa::INDEFINIDO);
    this->set_dtnascimento(time(0));
    this->set_cargo(Funcionario::INDEFINIDO);
    this->set_salario(0);
}

Funcionario::Funcionario(std::string nome, Sexo sexo, time_t dtnascimento, Cargo cargo, double salario) {
    this->set_nome(nome);
    this->set_sexo(sexo);
    this->set_dtnascimento(dtnascimento);
    this->set_cargo(cargo);
    this->set_salario(salario);
}

Funcionario::Funcionario(const Funcionario &outro) {
    set_nome(outro.get_nome());
    set_dtnascimento(outro.get_dtnascimento());
    set_sexo(outro.get_sexo());
    set_cargo(outro.get_cargo());
    set_salario(outro.get_salario());
}

Funcionario &Funcionario::operator=(const Funcionario &outro) {
    set_nome(outro.get_nome());
    set_dtnascimento(outro.get_dtnascimento());
    set_sexo(outro.get_sexo());
    this->cargo = outro.get_cargo();
    this->salario = outro.get_salario();
    return *this;
}

Funcionario::Cargo Funcionario::get_cargo() const { return this->cargo; }

double Funcionario::get_salario() const { return this->salario; }

void Funcionario::set_cargo(Cargo cargo) { this->cargo = cargo; }

void Funcionario::set_salario(double salario) { this->salario = salario; }

std::string Funcionario::toString(){
    time_t dtnascimento = this->get_dtnascimento();
    std::string tmp = "Funcionário{\n\tNome: ";

    std::string sexos[] = { "Indefinido", "Masculino", "Feminino" };
    std::string cargos[] = { "Indefinido", "Programador", "Analista", "Gerente", "Diretor" };

    tmp.append(this->get_nome());
    tmp.append("\n\tSexo: ");
    tmp.append(sexos[this->get_sexo()]);
    tmp.append("\n\tNascimento: ");
    tmp.append(ctime(&dtnascimento));
    tmp.append("\n\tSalario: ");
    tmp.append(std::to_string(this->get_salario()));
    tmp.append("\n\tNivel: ");
    tmp.append(cargos[this->get_cargo()]);
    tmp.append("\n}\n");

    return tmp;
}
