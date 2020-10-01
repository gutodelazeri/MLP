cmake_minimum_required(VERSION 3.17)
project(OOP)

set(CMAKE_CXX_STANDARD 11)

include_directories(Q1)
include_directories(Q3)
set(PESSOA Q1/Pessoa.cpp)
set(ALUNO Q1/Aluno.cpp)
set(FUNCIONARIO Q3/Funcionario.cpp)
#set(MAIN Q1/main.cpp)
#set(MAIN Q2/main.cpp)
#set(MAIN Q3/main.cpp)
set(MAIN Q4/main.cpp)

add_executable(main ${MAIN} ${PESSOA} ${ALUNO} ${FUNCIONARIO})
