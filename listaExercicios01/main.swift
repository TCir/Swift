//
//  main.swift
//  listaExercicios01
//
//  Created by Thiago Valentim on 11/02/22.
//

import Foundation

// 1 - Crie uma classe “Cachorro”, com 5 caracteristicas e 2 ações.

// 1 das ações deverá retornar uma resposta do tipo Bool.
// Crie um objeto cachorro:Cachorro = Cachorro()
//
//Printer na tela: Todas as características;
//                 Executar todos os métodos;
//                 Caso o metodo tenha retorno deverá printar na tela.
//

class Cachorro {
    var raca:String = "FoxPaulistinha"
    var porte:String = "Pequeno"
    var nome:String = "Yume"
    var idade:Int = 8
    var peso:Double = 18.7
    
    func latideira()-> Bool{
        return true
    }
    
    func melhorQualidade()-> String{
        return "Ela é excelente companheira."
        
        }
}

var cachorro:Cachorro = Cachorro()

print("\(cachorro.nome) é uma cachorra da raça \(cachorro.raca), ela tem \(cachorro.idade) anos e pesa \(cachorro.peso)Kg. Seu porte é \(cachorro.porte).")

print("\(cachorro.nome) é muito latideira: \(cachorro.latideira())")
print(cachorro.melhorQualidade())

print("_____________________________________________________________________________")

// 2 - Crie uma classe “Gato”, com 2 caracteristicas e 4 ações.

//1 das ações deverá retornar uma resposta do tipo Bool.
//1 das ações deverá retornar uma resposta do tipo Int.
//1 das ações deverá retornar uma resposta do tipo String.
//1 das ações deverá printar uma frase.
//
//Crie um objeto gato:Gato = Gato()
//
//Printer na tela:
//Todas as características
//Executar todos os métodos
//Caso o metodo tenha retorno deverá printar na tela


class Gato {
    var tamanho:String = "Grande"
    var nome:String = "Garfield"
    
    func soltaPelo()->Bool{
        return true
    }
    func bagunceiro()->String{
        return "Sempre que pode,\(nome) esta aprontando"
    }
    func idade()->Int{
        return 3
    }
    func peso()->Float{
        return 14.5
    }
}

var gato:Gato = Gato()

print(gato.bagunceiro())
print("\(gato.nome) solta pelo: \(gato.soltaPelo()).")
print("Um gato \(gato.tamanho) pesa \(gato.peso())Kg e já viveu \(gato.idade()).")

print("_____________________________________________________________________________")





