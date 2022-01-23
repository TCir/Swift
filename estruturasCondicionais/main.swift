//
//  main.swift
//  estruturasCondicionais
//
//  Created by Thiago Valentim on 23/01/22.
//

import Foundation

// Estuturas Condicionais
// É utilizado para fazer uma validação, verificar se tal condição foi atendida ou não.
// Ex: Condição -> Só poderá entrar na festa, maior de idade
// maior de idade >= 18
// A lógica
// Criado uma função, que recebe como parametro a variavel 'idade' do tipo inteiro. E o return será do tipo bool
func validaMaiordeIdade(idade:Int)-> Bool{
// a condicional 'if' inicia a condição informando: se idade for maior ou igual a 18, então o retorno será == true
    if idade >= 18{
        return true
    }
// se a condição 'if' não for atendida, entra no 'se não', e o retorno será false.
    else{
        return false
    }
}
print(validaMaiordeIdade(idade: 10 ))

print("-------------------------------------------")
//--------------------------------------------------------------------------

// Método IMC
 
func validadeIMC(altura:Double,peso:Double) -> String{
    
    let result = peso / (altura * altura)
   
    if result <= 16.9 {
                                // o rounded é para entregar um valor aproximado
        return "Muito abaixo do peso. Valor de \(result.rounded()) ."
    }
// o else if permite que repita a verificação da condição quantas vezes for necessário.
    else if result >= 17 && result <= 18.4{
        return "Abaixo do peso. Valor do IMC = \(result.rounded()) ."
    }else if result >= 18.5 && result <= 24.9{
        return "Peso ideal. Valor do IMC = \(result.rounded())  ."
    }else if result >= 25.0 && result <= 29.9{
        return "Acima do peso. Valor do IMC =  \(result.rounded())  ."
    }else if result >= 30.0 && result <= 34.9 {
        return "Obesidade Grau 1. Valor do IMC = \(result.rounded())  ."
    }else if result >= 35.0 && result <= 40.0{
        return "Obesidade Grau 2.Valor do IMC = \(result.rounded())  ."
    }else {
        return "Obesidade Grau 3. Valor do IMC = \(result.rounded()) ."
    }
}

print(validadeIMC(altura: 1.80, peso: 90))


