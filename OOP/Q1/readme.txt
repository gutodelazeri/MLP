Output parcial do programa original

    ...
    Pessoa{
    	Nome: Ana Paula
    	Sexo: Feminino
    	Nascimento: Thu Oct  1 10:02:45 2020
    }
    Pessoa{
    	Nome: Jose Silva
    	Sexo: Feminino
    	Nascimento: Thu Oct  1 10:02:45 2020
    }

Nota-se que 'p2->toString();' invoca o método implementado na classe Pessoa, e não o implementado
na classe Aluno. Isso acontece porque, por padrão, o compilador associa o método a ser invocado ao tipo da variável
(no caso, p2 é do tipo Pessoa). No entanto, podemos obter o comportamento desejado incluindo a keyword virtual na
declaração do método toString() da classe base Pessoa. Essa modificação faz com que o binding do método aconteça
em tempo de execução. Abaixo, segue o output parcial do programa após a modificação descrita.

    ...
    Pessoa{
    	Nome: Ana Paula
    	Sexo: Feminino
    	Nascimento: Thu Oct  1 10:17:35 2020
    }
    Aluno{
    	Nome: Jose Silva
    	Sexo: Feminino
    	Nascimento: Thu Oct  1 10:17:35 2020

    	Codigo: 01001010
    	Nivel: Graduacao
    }
