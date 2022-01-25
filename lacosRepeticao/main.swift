//
//  main.swift
//  lacosRepeticao
//
//  Created by Thiago Valentim on 24/01/22.
//

import Foundation

// Estrutura de Repeticao
// É um bloco de códicos que é possível identificar tanto de maneira manual, quanto de maneira automática.

// Alguns laços de repetição:
// while (enquanto) ->
// repeat (repita enquanto) ->
// for (durante) ->


// while >> enquanto uma 'condição' não atendida, faça a verificação

// Criado uma variável do tipo Int, e valor = 0
var index:Int = 0

// Aplicando o while.
// A condicação é: enquanto o valor de 'index'for menos ou igual a 10, continue a verificação.
while index <= 10 {
    print("index \(index)")
// é adicionado 1 ao valor do 'index' cada vez que ele passa na condição de ser meenor ou maior a 10.
    index = index + 1
}
print("O valor do index final é: \(index)")


