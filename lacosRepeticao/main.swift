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
// while (enquanto)
// repeat (repita enquanto)
// for (durante) -> mais utilizada


// while >> enquanto uma 'condição' não atendida, faça a verificação

// Criado uma variável do tipo Int, e valor = 0
var index:Int = 0

// Aplicando o while.
// A condicação é: enquanto o valor de 'index'for menos ou igual a 10, continue a verificação.
while index <= 10 {
    print("index \(index)")
// é adicionado 1 ao valor do 'index' cada vez que ele passa na condição de ser menor ou maior a 10.
    index = index + 1
}
print("O valor do index final é: \(index)")

// Repeat
// Ela roda o loop, e no somente no final é verificado se continua ou não atendendo a condição.

var indexRepeat:Int = 1

repeat{
    print("indexRepeat \(indexRepeat).")
    indexRepeat = indexRepeat + 1
} while indexRepeat <= 15
    print("O valor do index final é: \(indexRepeat)")
            

// For
// Ele permite informar onde será o inicio e o fim das repetições. Difetente do while e do repeat que o último valor era "UM" valor a mais ao ultimo número determinado.
var value:Int = 5

for value in 5...50{
    print(value)
}

