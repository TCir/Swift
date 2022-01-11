//
//  main.swift
//  FuncionalidadesBasicasFuncoes
//
//  Created by Thiago Valentim on 10/01/22.
//

import Foundation

// O que é uma função?
//É bloco de códigos que quando é executado, ele entrega uma funcionalidade.
// Função = métodos

// Existe 4 tipos de funcáoes ou métodos:
// Função sem retorno;
// Função com retorno;
// Função com parametros
// Função sem parametros


// Criando funçao/métodos com parametros e sem retorno
// valor1 e valor2 são os valores da FUNCAO somaValores
func somaValor(valor1:Int, valor2:Int){
    print(valor1 + valor2)  // ela imprimiu o que continha dentro dela
}
// chamando e atribuindo valores para os parametros
somaValor(valor1: 10, valor2: 10)

// Criando funçao/métodos sem parametros e sem retorno
// Geralmente é utilizada para dar um start em algo, como exemplo, iniciar uma tela.
func nomeCompleto(){
    print("Thiago Valentin") //  ela imprimiu o que continha dentro dela
}
//chamando o metodo
nomeCompleto()  // basta chamar a funçao para ela ser executada.


// Criando funçao/método de retorno COM PARAMETROS
//É uma funçao que, quando é somada, me retorna alguma coisa.
// Uma funçao sem retorno, ela apenas altera algo quando é executada
// Já uma funçao com retorno, me retorna um determinado valor
// o que determina se tem ou nao retorno é -> na frente da funcao
func multiValores(valor1:Int, valor2:Int)->Int{
    return valor1 * valor2
}
var valorTotalMulti:Int = multiValores(valor1: 5, valor2: 8)
print(valorTotalMulti)


// Criando uma funçao/método de retorno SEM PARAMETROS
//
// Criado uma variável do tipo String com um certo valor
var completeName:String = "Thiago C V Ribeiro"
// Criado uma funcao s/parametro, tendo um retorno do tipo string
func trazerTextoVariaveis()-> String{
    return completeName
}
// pedindo para mostrar o que esta retornando no método
print(trazerTextoVariaveis())
