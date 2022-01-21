//
//  main.swift
//  ConceitosBasicosBF
//
//  Created by Thiago Valentim on 20/01/22.
//

import Foundation

// Estamos importanto o pacote do UIKit que é uma biblioteca de componentes gráficos. Onde tem todos os elementos necessários para programar.

// Variáveis Implicita
// Neste tipo de variáveis posso atribuir qualquer tipo(String, Int, Float, Bool) de valor, que irá aceitar
var profissao = "Developer iOS"
var nivel = "junior"
// tudo que colcoar entre aspas será lido como texto.


// Variáveis Explicita
// Já neste tipo, o "tipo" que eu atribuir para determinada variável, só aceitara apenas este tipo de valor
var nome:String = "Thiago"
var altura:Float = 1.78
var idade:Int = 33
var saudavel:Bool = true


var numeroFloat:Float = 3.1415836988478546625
var numeroDouble:Double = 3.1415836988478546625

print(numeroFloat)  // consegue representar menos casas decimais
print(numeroDouble) // é mais preciso e representa mais casas



// Trabalhando com a soma de uma tipagem diferentes

var numeroDoubleTest:Double = 1550.145
var somaTest:Int = 20
var realNumero:String = "5344"

// Force-unrep É TOTALMENTE BANIDO DE UTILIZAÇÃO.
//Force-unrep é: '!' apos uma variável
//var valorTotal:Int = Int(realNumero)! + somaTest + Int(numeroDoubleTest)
//print(valorTotal)

// Uma solução seria
var valorTotal:Int = (Int(realNumero) ?? 1000) + somaTest + Int(numeroDoubleTest)
print(valorTotal)



// Concatenação
// É quando estamos juntando textos. Ou seja, uma String com a outra
var frase1:String = "O valor da soma é de: "
var frase2:String = " reais"
var resultText:String = frase1 + String(valorTotal) + frase2
print(resultText)


// Interpolação
// É uma maneira que ajuda é a evitar vários erros na repetição de String antes de tudo

var fraseResultado:String = "O valor da soma é de: \(valorTotal) reais."
print(fraseResultado)



//_______________________________________________________________

// Exercício 01

var umNumeroA:Int = 10
var umNumeroB:Double = 5.5
var umString:String = "4.5"
// Letra A

print("O valor da variável umNumero é: \(umNumeroA)")
print("O valor da variável  umNumero é: \(umNumeroB)")
print("O valor da variável  umSring é: \(umString)")

// Letra B
var somaAeB:Double = Double(umNumeroA) + umNumeroB
print("A soma entre \(umNumeroA) e \(umNumeroB) será: \(somaAeB)")

// Letra C
var diferencaAeB:Double = Double(umNumeroA) - umNumeroB
print("A diferença entre \(umNumeroA) e \(umNumeroB) será: \(diferencaAeB)")

// Exercício 02
var dias:Int = 365
var horas:Int = 24
var segundoshora:Int = 3600
var segundosAno: Int = dias * horas * segundoshora
print("Um ano tem \(segundosAno) segundos")


// Exercicio 03

// Letra A
var inteiro:Int = 20
print("A variavel inteiro é: \(inteiro)")

// Letra B
var flutuante:Float = 3.1458
print("A variavel float é: \(flutuante)")

// Letra C
var doub:Double = 5.14
print("A variavel double é: \(doub)")


