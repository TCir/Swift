//
//  main.swift
//  introArray
//
//  Created by Thiago Valentim on 25/01/22.
//

import Foundation

// Array ou Listas
// É uma lista que contem nenhum ou 'N'valores.
// Trabalha com 'index', o index nada mais é que uma posição de um elemento dentro de uma lista.
// Array é um tipo "Ordenado",

var diasDaSemana: [String] = ["segunda","terça","quarta","quinta","sexta","sábado","domingo"]
// O index desta lista é a ordem dos dias da semana. Ou seja, segunda esta na posição [0], terça na posição[1],quarta [2],qunita[3],sexta[4],sabado[5] e domingo na posição[6].  ou seja, a posicao inicia em 0.

// Quando se imprime simplesmente "print(diasDaSemana)" irá imprimir exatamente como esta na estrutura acima, com colchetes, aspas duplas e virgulas, tudo do mesmo jeito. Isto porque o "Array" é ordenado.
print(diasDaSemana)

// Quando se pede para imprimir indicando a posição, irá entregar apenas o valor contido naquela posição
print(diasDaSemana[3]) // vai imprimir o dia que estiver ocupando a posição '3'.


//
print(diasDaSemana[1])


// Propriedades principais de um Array
// Para saber quantidade de itens esta dentro do Array
print(diasDaSemana.count)

// Para Descobrir se a lista esta vazia
print(diasDaSemana.isEmpty)  // dará: False se estiver cheia, e True se estiver fazia.

//Como remover um item da lista
// Quando abrimos o .remove => abre uma série de opções das várias possibilidades que posso remover
diasDaSemana.remove(at: 4) // é retirado a "a sexta" e o sábado cai para a posição dela
print(diasDaSemana)
// caso removo a mesma posição novamente, irei retirar o elemento que ocupou a opção apos a remoção anterior
 diasDaSemana.remove(at: 4) // é retirado sábado e o domingo cai para a posição do sábado
print(diasDaSemana)


// Para adicionar um novo valor
diasDaSemana.append("Essa frase irá ocupar a última opção")
print(diasDaSemana)


// Apresentar na ordem inversa // o último elemento será mostrado primeiro e sucessivamente.
diasDaSemana.reverse()
print(diasDaSemana)



print("______________________________________________________________________________________")

// Dicionário
// Caracteristicas => Não é orndenado
//                 =>

// 1 elemento = chave/key
// 2 elemento = valor/value

// Sua estrutura
var nota:[Int:String] = [1:"Nota baixa",2:"Nota média",3:"Nota Alta",4:"Excelente"]
var nota2:[Int:String] = [1:"Nota baixa",2:"Nota média",3:"Nota Alta",4:"Excelente"]
print(nota)

// buscando valores de um dicionario atraves da chave
// 1 é a chave de Nota baixa
// 4 é a chave de Excelente
print(nota[1] ?? "" )

// Remover um elemento do dicionario
nota.removeValue(forKey: 2)    // informo o valor que esta sendo ocupado naquela chave.
print(nota)

// Em Dicioario -> Se uso uma chave que não existe, não irá dar erro, irá simplesmente imprimir todos os valores normalmente.

// Adicionar elementos no dicionário
// Se adiciono um elemento e a chave que utilizo não existe, este elemento será simplesmente adicionado
nota.updateValue("Apenas um Upgrade", forKey: 8)
print(nota)
// Se adiciono um elemento atribuindo uma key que já existe, irá apenas atualizar o valor atribuído
// e o update que fiz anteriormente continua no dicionário.
nota.updateValue("Mudança de valor apenas", forKey: 2)
print(nota)

