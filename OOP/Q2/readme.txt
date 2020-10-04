- Não há muito que analisar no programa original pois o tipo do vetor é primitivo.

- O que podemos ter certeza é que, como não há pré-alocação da memória para o vetor, haverão
  diversas cópias para novos espaços de memória, conforme a capacidade máxima do vetor é atingida.

Output completo do programa original:

    Tamanho do vetor = 0
    Inserindo alguns elementos...
    Tamanho do vetor = 10
    vetor[0] = 0
    vetor[1] = 1
    vetor[2] = 2
    vetor[3] = 3
    vetor[4] = 4
    vetor[5] = 5
    vetor[6] = 6
    vetor[7] = 7
    vetor[8] = 8
    vetor[9] = 9
     elemento 0 = 0
     elemento 1 = 1
     elemento 2 = 2
     elemento 3 = 3
     elemento 4 = 4
     elemento 5 = 5
     elemento 6 = 6
     elemento 7 = 7
     elemento 8 = 8
     elemento 9 = 9
--------------------------------------------------------------------------------------------------------------
- Objetos são construídos e depois copiados para a região de memória do vetor. Pode-se eliminar o overhead
  causado pela construção fora de lugar do objeto usando-se o método emplace_back, o qual constrói o objeto
  diretamente no espaço de memória do vetor

- Quando a capacidade máxima do vetor é atingida, uma nova região de memória é alocada e
  todos os objetos do vetor são copiados para o novo espaço de memória

Output completo do programa modificado:

Tamanho do vetor = 0                        |
Inserindo alguns elementos...               |
Construtor alternativo de Pessoa chamado    |
Construtor Pessoa() chamado                 |
Construtor de cópia chamado                 |---------- Objeto 0 é construído e copiado para o vetor
Construtor alternativo de Pessoa chamado    |
Construtor Pessoa() chamado                 |
Construtor de cópia chamado                 |
Construtor de cópia chamado                 |---------- Objeto 1 é construído; Objetos 0 e 1 são copiados para o vetor
Construtor alternativo de Pessoa chamado    |
Construtor Pessoa() chamado                 |
Construtor de cópia chamado                 |
Construtor de cópia chamado                 |
Construtor de cópia chamado                 |---------- Objeto 2 é construído; Objetos 0,1,2 são copiados para o vetor
Construtor alternativo de Pessoa chamado    |
Construtor Pessoa() chamado                 |
Construtor de cópia chamado                 |---------- Objeto 3 é construído e copiado para o vetor;
Construtor alternativo de Pessoa chamado    |
Construtor Pessoa() chamado                 |
Construtor de cópia chamado                 |
Construtor de cópia chamado                 |
Construtor de cópia chamado                 |
Construtor de cópia chamado                 |
Construtor de cópia chamado                 |---------- Objeto 4 é construído; Objetos 0,1,2,3,4 são copiados para o vetor
Construtor alternativo de Pessoa chamado    |
Construtor Pessoa() chamado                 |
Construtor de cópia chamado                 |---------- Objeto 5 é construído e copiado para o vetor
Construtor alternativo de Pessoa chamado    |
Construtor Pessoa() chamado                 |
Construtor de cópia chamado                 |---------- Objeto 6 é construído e copiado para o vetor
Construtor alternativo de Pessoa chamado    |
Construtor Pessoa() chamado                 |
Construtor de cópia chamado                 |---------- Objeto 7 é construído e copiado para o vetor
Construtor alternativo de Pessoa chamado    |
Construtor Pessoa() chamado                 |
Construtor de cópia chamado                 |
Construtor de cópia chamado                 |
Construtor de cópia chamado                 |
Construtor de cópia chamado                 |
Construtor de cópia chamado                 |
Construtor de cópia chamado                 |
Construtor de cópia chamado                 |
Construtor de cópia chamado                 |
Construtor de cópia chamado                 |---------- Objeto 8 é construído; Objetos 0,1,2,3,4,5,6,7,8 são copiados para o vetor
Construtor alternativo de Pessoa chamado    |
Construtor Pessoa() chamado                 |
Construtor de cópia chamado                 |---------- Objeto 9 é construído e copiado para o vetor
Tamanho do vetor = 10                       |
vetor[0] = Pessoa{
	Nome: Indefinido
	Sexo: Indefinido
	Nascimento: Thu Oct  1 11:19:24 2020
}

vetor[1] = Pessoa{
	Nome: Indefinido
	Sexo: Indefinido
	Nascimento: Thu Oct  1 11:19:24 2020
}

vetor[2] = Pessoa{
	Nome: Indefinido
	Sexo: Indefinido
	Nascimento: Thu Oct  1 11:19:24 2020
}

vetor[3] = Pessoa{
	Nome: Indefinido
	Sexo: Indefinido
	Nascimento: Thu Oct  1 11:19:24 2020
}

vetor[4] = Pessoa{
	Nome: Indefinido
	Sexo: Indefinido
	Nascimento: Thu Oct  1 11:19:24 2020
}

vetor[5] = Pessoa{
	Nome: Indefinido
	Sexo: Indefinido
	Nascimento: Thu Oct  1 11:19:24 2020
}

vetor[6] = Pessoa{
	Nome: Indefinido
	Sexo: Indefinido
	Nascimento: Thu Oct  1 11:19:24 2020
}

vetor[7] = Pessoa{
	Nome: Indefinido
	Sexo: Indefinido
	Nascimento: Thu Oct  1 11:19:24 2020
}

vetor[8] = Pessoa{
	Nome: Indefinido
	Sexo: Indefinido
	Nascimento: Thu Oct  1 11:19:24 2020
}

vetor[9] = Pessoa{
	Nome: Indefinido
	Sexo: Indefinido
	Nascimento: Thu Oct  1 11:19:24 2020
}

 elemento 0 = Pessoa{
	Nome: Indefinido
	Sexo: Indefinido
	Nascimento: Thu Oct  1 11:19:24 2020
}

 elemento 1 = Pessoa{
	Nome: Indefinido
	Sexo: Indefinido
	Nascimento: Thu Oct  1 11:19:24 2020
}

 elemento 2 = Pessoa{
	Nome: Indefinido
	Sexo: Indefinido
	Nascimento: Thu Oct  1 11:19:24 2020
}

 elemento 3 = Pessoa{
	Nome: Indefinido
	Sexo: Indefinido
	Nascimento: Thu Oct  1 11:19:24 2020
}

 elemento 4 = Pessoa{
	Nome: Indefinido
	Sexo: Indefinido
	Nascimento: Thu Oct  1 11:19:24 2020
}

 elemento 5 = Pessoa{
	Nome: Indefinido
	Sexo: Indefinido
	Nascimento: Thu Oct  1 11:19:24 2020
}

 elemento 6 = Pessoa{
	Nome: Indefinido
	Sexo: Indefinido
	Nascimento: Thu Oct  1 11:19:24 2020
}

 elemento 7 = Pessoa{
	Nome: Indefinido
	Sexo: Indefinido
	Nascimento: Thu Oct  1 11:19:24 2020
}

 elemento 8 = Pessoa{
	Nome: Indefinido
	Sexo: Indefinido
	Nascimento: Thu Oct  1 11:19:24 2020
}

 elemento 9 = Pessoa{
	Nome: Indefinido
	Sexo: Indefinido
	Nascimento: Thu Oct  1 11:19:24 2020
}
