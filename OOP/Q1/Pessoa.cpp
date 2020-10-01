#include "Pessoa.h"

Pessoa::Pessoa() : Pessoa("Indefinido", INDEFINIDO, time(0)){
    std::cout << "Construtor Pessoa() chamado"<< std::endl;
}

Pessoa::Pessoa(std::string nome, Pessoa::Sexo sexo, time_t dtnascimento)
        : nome(nome), sexo(sexo), dtnascimento(dtnascimento){
    std::cout << "Construtor alternativo de Pessoa chamado" << std::endl;
}

Pessoa::Pessoa(const Pessoa& outra)
        : nome(outra.nome), dtnascimento(outra.dtnascimento), sexo(outra.sexo){
    std::cout << "Construtor de cópia chamado" <<std::endl;
    // este eh soh um exemplo e pode nao funcionar como esperado
    // substitua pelo seu codigo
}

Pessoa& Pessoa::operator=(const Pessoa& outra){
    // este eh soh um exemplo e pode nao funcionar como esperado
    // substitua pelo seu codigo
    this->nome = outra.nome;
    this->dtnascimento = outra.dtnascimento;
    this->sexo = outra.sexo;
    std::cout << "Operator= chamado" << std::endl;
    return *this;
}
time_t Pessoa::get_dtnascimento() const{
    return this->dtnascimento;
}

void Pessoa::set_dtnascimento(time_t dtnascimento){
    this->dtnascimento = dtnascimento;
}

std::string Pessoa::get_nome() const{
    return this->nome;
}

void Pessoa::set_nome(std::string nome){
    this->nome = nome;
}

Pessoa::Sexo Pessoa::get_sexo() const{
    return this->sexo;
}

void Pessoa::set_sexo(Pessoa::Sexo sexo){
    this->sexo = sexo;
}

std::string Pessoa::toString(){
    time_t dtnascimento = this->get_dtnascimento();
    std::string tmp = "Pessoa{\n\tNome: ";

    std::string sexos[] = { "Indefinido", "Masculino", "Feminino" };

    tmp.append(this->get_nome());
    tmp.append("\n\tSexo: ");
    tmp.append(sexos[this->get_sexo()]);
    tmp.append("\n\tNascimento: ");
    tmp.append(ctime(&dtnascimento));
    tmp.append("}\n");

    return tmp;
}

std::ostream& operator<<(std::ostream& os, Pessoa::Sexo s)
{
    switch(s) {
        case Pessoa::INDEFINIDO : os << "INDEFINIDO"; break;
        case Pessoa::MASCULINO  : os << "MASCULINO"; break;
        case Pessoa::FEMININO   : os << "FEMININO"; break;
        default                 : os.setstate(std::ios_base::failbit);
    }
    return os;
}