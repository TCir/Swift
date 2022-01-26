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

var diasDaSemana: [String] = ["segunda","terça","quarta","quinta","sexta","sábado","domingo"]
// O index desta lista é a ordem dos dias da semana. Ou seja, segunda esta na posição [0], terça na posição[1],quarta [2],qunita[3],sexta[4],sabado[5] e domingo na posição[6].  ou seja, a posicao inicia em 0.

// Quando se imprime simplesmente "print(diasDaSemana)" irá imprimir exatamente como esta na estrutura acima, com colchetes, aspas duplas e virgulas, tudo do mesmo jeito. Isto porque o "Array" é ordenado.
print(diasDaSemana)

// Quando se pede para imprimir indicando a posição, irá entregar apenas o valor contido naquela posição
print(diasDaSemana[3]) // vai imprimir o dia que estiver ocupando a posição '3'.


//
print(diasDaSemana[1])
