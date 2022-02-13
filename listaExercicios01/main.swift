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

// 6 - Crie uma classe “Computador”, com 3 caracteristicas e 3 ações.

//​​1 das ações deverá retornar uma resposta do tipo String.
//1 das ações deverá retornar uma resposta do tipo Bool.
//1 das ações deverá printar uma frase.
//
//Crie uma variável var computador:Computador?
//
//Printer na tela:
//Todas as características SEM OPCIONALIDADE, DESTE MODO NÃO PODERÁ CONTER O OPCIONAL NAS RESPOSTAS
//Executar todos os métodos
//Caso o metodo tenha retorno deverá printar na tela
//Nos metodos que houver o retorno, deverá retornar alguma característica do próprio objeto

class Computador{
    
    var portatil:Bool
    var marca:String
    var processador:String
    
    init(portatil:Bool,marca:String,processador:String){
        self.portatil = portatil
        self.marca = marca
        self.processador = processador
    }
    
    func utilização()->String{
        return marca
    }
    func Notebook()->Bool{
        return portatil
    }
    func vantagem(){
        print("Uma das maiores vantagens de um notebook é poder levar para as viagens")
    }
    
}


var myNote:Computador = Computador(portatil: true, marca: "Apple", processador: "M1X")

print(myNote.portatil,myNote.marca,myNote.processador)

print("_____________________________________________________________________________")

// Praticando Class + condicional

class Celular {
    var marca:String
    var modelo:String
    var anoLancamento:Int
    var tamanhoTela:Double
    var carregaInducao:Bool
    var bateria:Int
    var cincoG:Bool
    
    init(marca:String,modelo:String,anoLancamento:Int,tamanhoTela:Double,carregaInducao:Bool,bateria:Int,cincoG:Bool)
    {
        self.marca = marca
        self.modelo = modelo
        self.anoLancamento = anoLancamento
        self.tamanhoTela = tamanhoTela
        self.carregaInducao = carregaInducao
        self.bateria = bateria
        self.cincoG = cincoG
    }
    
    func desempenhoBateria() {
        if(marca == "Apple" && anoLancamento >= 2019 && bateria >= 3900){
            print("Possivelmente terá um bom desempenho de bateria, use e seja feliz.")
        }else if(marca == "Apple" && anoLancamento <= 2016 && bateria <= 3100){
            print("Pode não durar muito, use com moderação.")
        }else if(marca != "Apple" && anoLancamento >= 2021 && bateria >= 4900){
            print("Acho que não vai ter que carregar todos os dias.")
        }else if (marca == "Nokia" &&  anoLancamento < 2005 && bateria <= 1000){
            print("As chances da bateria durar 1 semana, é grande")
        } else {
            print("Você tem um telefone fixo e não sabe.")
        }
    }
    
}

var cellPhone:Celular = Celular(marca: "Samsung", modelo: "A21", anoLancamento: 2021, tamanhoTela: 5.5, carregaInducao: true, bateria: 5000, cincoG: false)
var cellPhone01:Celular = Celular(marca: "Apple", modelo: "11Pro Max", anoLancamento: 2020, tamanhoTela: 6.5, carregaInducao: true, bateria: 3969, cincoG: false)

cellPhone.desempenhoBateria()
cellPhone01.desempenhoBateria()
