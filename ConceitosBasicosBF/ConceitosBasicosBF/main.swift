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



print("_______________________________________________________________")

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

print("_______________________________________________________________")

// Exercício 02
var dias:Int = 365
var horas:Int = 24
var segundoshora:Int = 3600
var segundosAno: Int = dias * horas * segundoshora
print("Um ano tem \(segundosAno) segundos")

print("_______________________________________________________________")

// Exercicio 03
// Convertendo uma Int, Float e Double em String.
var numeroInteiro:String = String(inteiro)
var numeroflutuante:String = String(flutuante)
var numeroDoub:String = String(doub)

// Letra A
var inteiro:Int = 20
print("A variavel inteiro é: \(inteiro) ")

// Letra
var flutuante:Float = 3.1458
print("A variavel float é: \(flutuante)")

// Letra C
var doub:Double = 5.14
print("A variavel double é: \(doub)")

print("_______________________________________________________________")

// Funções // Métodos
// let é sempre mais utilizada por não aceitar ser alterada no decorrer de uma atividade. Caso precise alterar aquele valor, o proprio Xcode irá me indicar que aquela variável é uma "constante" e não pode ser alterada. Caso eu precise alterar ela, o basta dar um 'fix'.

// Uma função é um bloco de códgo que realiza uma rarefa em específico. Permite encpasular código e realiza-lo diversas vezes.

// Estrutura de uma Função/Método
// Primeiro: inicia com o comando 'func'
// Segundo: o nome da função
// Logo apos o nome deve vim parenteses () -> aqui dentro terá ou não seus parámetros
// Terceira: abre e fecha as chaves {} -> aqui dentro terá tudo que deve ser feito dentro da função.
// Quarta: precisa ser criado a 'CHAMADA' da função. ex: exibirNome() -> neste momento irá ser apresentado tudo que estiver dentro da função.
// Este tipo de função não armazena valor

// Função SEM RETORNO e Sem Parâmetro
func exibirNome(){
    print("Cara, a função esta funcionando!!")
    
}

exibirNome() // Quantas vezes eu chamar a função, tantas vezes esta função irá ser chamada.
// chamando a função 4x ela será chamada 4x e irá executar o que estiver contido nela 4x.
exibirNome()
exibirNome()
exibirNome()
exibirNome()


//NÃO POSSO CRIAR UMA FUNÇÃO DENTRO DE OUTRA FUNÇÃO. MAS POSSO EXECUTAR UMA FUNÇÃO DENTRO DE OUTRA FUNÇÃO.

func segundaFuncao(){
    print("A segundaFunção esta funcionando!! Embaixo vai chamar ExibirNome.")
    exibirNome()
}

segundaFuncao()

func chamaFuncaoExibirNome(){
    print("A função chamaFuncaoExibirNome esta funcionando!! Embaixo vai chamar ExibirNome")
    exibirNome()
}

chamaFuncaoExibirNome()


print("_______________________________________________________________")


// Função SEM RETORNO e COM Parâmetro
//
func mostrarAsubtracaoDoValor(valor1:Int,valor2:Int){
    print(valor1 - valor2)
}

mostrarAsubtracaoDoValor(valor1: 124, valor2: 78)


// Criando uma funçao/método COM Retorno SEM PARAMETROS
//
// Criado uma variável do tipo String com um certo valor
var completeName:String = "Thiago C V Ribeiro"
// Criado uma funcao s/parametro, tendo um retorno do tipo string
func trazerTextoVariaveis()-> String{
    return completeName
}
// pedindo para mostrar o que esta retornando no método
print(trazerTextoVariaveis())


// Função sem retorno e sem parametro é utilizado para operações iniciais de um projeto. Onde não precisa retornar e nem receber nada.


print("_______________________________________________________________")
// Questão 01
// Criar uma função com o nome 'soma' que tenha 3 parametros (valor1:Int,valor2:Int,valor3:Int) e que ela faça uma soma entre os valores e quero e quero um retorno sob o valor total.

func somaAi(valor1:Int,valor2:Int,valor3:Int)->Int{
    return  valor1 + valor2 + valor3
}
// Chamando a função dentro do print, neste momento já adiciono os valores
print(somaAi(valor1: 12, valor2: 74, valor3: 94))


print("_______________________________________________________________")

// Questão 02
// Crie uma função onde exiba na área de debug uma seguinte frase "Olá Mundo, estou apresendo a criar minhas primeiras funções".

func hello(){
    print("Olá Mundo, estou aprendendo a criar minhas primeiras funções")
}
hello()


print("_______________________________________________________________")

