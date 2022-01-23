//
//  main.swift
//  criandoVariaveis
//
//  Created by Thiago Valentim on 09/01/22.
//

import Foundation

// Criando a nossa primeira variável.
// Passo 1 -> var
// Passo 2 -> nome da variavel,  ex: animal
// Passo 3 -> tipo da variável,  ex: string, int, bool
// Passo 4 -> valor da variável, ex: "gato"
// Resultado -> var animal: string = "gato";

var sexo:String = "Masculino"
var nome:String = "Thiago"
var profissao:String = "Software Engeenier"
var idade: Int = 33
var pi:Double = 3.14151634865



// Concatenando variáveis

// Primeira maneira para fazer uma frase utilizando string + int.
// Para utilizar uma variável diferente do tipo string, coloco ela dentro de () antecedendo o tipo String que ira convertela
var sobreMim:String = "Me chamo " + nome + " e tenho " + String (idade) + " estou estudando para ser um " + profissao
print(sobreMim)

// A segunda maneira ao inves de utilizar o "+"
// Este processo é mais simples, e apresenta menos chances de dar erro.
// Desta forma não preciso utilizar o 'String ()' para converter o 'Int' para ser apresentado.
var fraseSimples:String = "Me me chamo \(nome) e tenho \(idade), estou estudando para ser um \(profissao)."
print(fraseSimples)

// Manipulação com Float e Double
var valorDolar:String = "O dolar hoje esta custando \(pi) reais."
print(valorDolar)


// Variaveis opcionais

var name:String? // esta sendo criado uma variavel, porem nao contem valor
//print(name)  // imprimindo desta forma, retorna um valor vazio = nil.

//
print(name)  // ira entregar um valor de  'opcional' = James

// Variaveis opcionais é muito utilizando quando se trabalha com requisições
// Ou seja, quando os precisa trabalhar com resultados vindos do Back-End.
//O Back-end pode me retornar uma String, Int, Float, e por nao saber qual tipo vira
// preciso esperar para fazer a tratativa 'na mao'
// O normal é vim do Back o tipo já correto, mas para evitar que ocorra, tem esta solucao.

var frase = "O meu nome é \(name)"
print(frase) // como name:String? esta como algo opcional, terei o sitema entregando algo que 'pode ser'o valor de nome, pois é possível que seja Nil também.

// Fazendo uma tratativa por baixo dos panos
var fras = "O meu nome é \(name ?? "Thiago")."  // ?? se nao
// Desta forma se o valor de 'name' for = nil, retornara o valor Thiago
// Colocando uma condicao elimino tambem o 'opicional' na frente do valor
print(fras)

// A opcionalidade é utilizada para previnir vários erros e acabar dando 'crash'
// Jamais utilizar o force unwrapping para garantir que obterei determinado valor
// o force unwrapping é quando utilizo ! na frente de uma variável




