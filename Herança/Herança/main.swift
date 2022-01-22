//
//  main.swift
//  Herança
//
//  Created by Thiago Valentim on 22/01/22.
//

import Foundation

// criando uma class, nome 'Animal'
// Tenho criado uma classe que irá atribuir herança a todos que a possuirem.
// Então, tudo que for adicionado aqui dentro, irá ser adicionado automaticamente em quem herdar a classe 'Animal'
class Animal{
     
    var  testeVariavel:String = "A herança esta funcionando"
    func comer(){
        print("O animal está comento")
    }
    func andar(){
        print("O cavalo esta andando")
    }
    func testeFuncao(){
        print("A Herança esta funcionando")
    }
}

// Uma 'Herança' consegue levar todas as caracteristicas quanto os métodos
// para quem herdar

// criando uma classe, nome 'Vaca'
// Foi criado uma nova classe, e ao colocar :Animal na frente, todas as ações
 // que existem nesta classe, já é adicionada automaticamente na classe
    class Vaca:Animal {
    // caracteristicas
    var peso:Int = 470
    var chifres:Bool = true
    var leiteira:Bool = true
    // funções
    func produzLeite(){
        print("Para produzir leite, precisa dar cria")
    }
}

// Criando uma classe, nome Cavalo
// Foi criado uma nova classe, e ao colocar :Animal na frente, todas as ações
// que existem nesta classe, já é adicionada automaticamente na classe
    class Cavalo:Animal {
    // caracteristicas
    var peso:Int = 300
    var cor:String = "Marrom"
    var bomDeCela:Bool = true
    // funções
    
    func carroca(){
        print("O cavlo é bom de carroça")
    }
}

// criando objetos
var vacaAnimal:Vaca = Vaca()
print(vacaAnimal.testeVariavel)
print(vacaAnimal.testeFuncao)

var cavaloAnimal:Cavalo = Cavalo()
print(cavaloAnimal.carroca)


