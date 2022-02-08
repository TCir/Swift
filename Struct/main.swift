//
//  main.swift
//  Struct
//
//  Created by Thiago Valentim on 23/01/22.
//

import Foundation

// Struct
// Principal carcteristica: Trabalha com VALORES
// NÃO trabalha com referências como em Class



struct Sobrado{
    // Uma diferença entre struct e class é que não preciso iniciar valores já inicialmente. Isso porque ele já tem um 'construtor' trabalhando internamente.
    var quantidadePorta:Int
    var quantidadeBanheiro:Int
    var emConstrução:Bool
    var corSala:String
    var tamanhoMetros:Double
}

// Criando um objeto para Sobrado.
// Para criar um objeto sigo a mesma regra utilizada em Class.
var casaThiago:Sobrado = Sobrado(quantidadePorta: 6, quantidadeBanheiro: 2, emConstrução: false, corSala: "cinza", tamanhoMetros: 85.40)

// Imprimindo caracteristica
print(casaThiago.emConstrução)
print("-----------------------------------------")

// Verificando sua principal funcionalidade
// Aqui estou criando um novo objeto, porém usando a mesma Struct, ou seja, terei os mesmo itens contido no objeto 'casaThiago', porém com novos valores em seus parámetros
var casaAmigo:Sobrado = Sobrado(quantidadePorta: 8, quantidadeBanheiro: 4, emConstrução: true, corSala: "branco", tamanhoMetros: 140.5)
 
//imprimindo caracteriticas comparativas
print("A casa de Thiago tem \(casaThiago.tamanhoMetros) metros quadratos.")
print("A casa do Amigo tem \(casaAmigo.tamanhoMetros) metros quadratos.")
print("-----------------------------------------")

// fazendo referência entre as Struct
// igualando um objeto ao outro, e comparando os resultados
// feito a implementação da igualdade entre os objetos
casaThiago = casaAmigo
print("A casa de Thiago tem \(casaThiago.tamanhoMetros) metros quadratos.")
print("A casa do Amigo tem \(casaAmigo.tamanhoMetros) metros quadratos.")
// Ambas terão o mesmo valor pois foram igualadas
// Até aqui, parece que esta funcionando igual em Class. Porém existe uma diferença.
print("-----------------------------------------")

//  Alterando uma caracteristica em uma Struct
// No objeto casaAmigo, foi modificado o valor o parámetro/variável
casaAmigo.quantidadeBanheiro = 10
print("A casa do amigo agora tem \(casaAmigo.quantidadeBanheiro) banheiros.")
// Porém olha o que acontece quando peço para ver a quantidade de banheiros na outra Struct
print("A casa do Thiago agora tem \(casaThiago.quantidadeBanheiro) banheiros.")
// Ou seja, o valor atribuído em específico a uma Struct não será atribuído na outra Struct.
print("-----------------------------------------")

// Outros exemplos apenas para testar
casaThiago.corSala = "Preta"
print("A cor da sala na casa de Thiago é \(casaThiago.corSala)")
print("A cor da sala na casa do Amigo é \(casaAmigo.corSala)")


// Portanto, devo lembrar.
// Struct -> não preciso fazer o init(para ter o construtor)
//        -> apos fazer referência entre as strtucts A e B, terei a igualdade das caracteristicas entre eles, porém as alterações que fizer em uma struct A não serão atribuidos a  struct B e vice-versa, diferentemente das Classes.
// Isso ocorre porque Struct: Struct É value Type --> quando é atribuido um valor para outro, cada instância mantém uma cópia exclusiva dos dados. Ou seja, se alterar uma instância, a outra não recebera essa alteração.


