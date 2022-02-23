//
//  main.swift
//  classHerança
//
//  Created by Thiago Valentim on 15/02/22.
//

// Estrategia para criar uma 'Super Class'.
// Criar uma classe bem 'generica', e colocar nela tudo que posso vim a precisar nas classes que vão herder
// dela.
// Na 'Super Class' posso colocar tudo que vou precisar nas 'sub classes', porém as 'sub classes' não precisam utilizar tudo que ela estiver herdando.
import Foundation

class Animal {  //A "classPai" é aquela que contem todas as caracteriscticas genericas que as outras vão precisar
    
    func comer(){
        print("O animal esta comendo.")
    }
    func movimentar(){
        print ("O animal esta se movimentando.")
    }
    func respirar(){
        print("O animal esta respirando.")
    }
}

// Passando uma tipagem a nova class.
// A class Vaca esta recebendo todos os métodos da class Animal
class Vaca:Animal{
    
}
// Utilização da herança por exemplo: -> criação de um componente para obter um botão generico.
// Um header de um app que se repete em várias telas diferentes.
// criando uma nova class

// o objeto mimosa, recebe todas as propriedades da class Animal.
var mimosa:Vaca = Vaca()

class Boi:Animal{
    
}

// Polimorfismo
// A partir do momento que estamos sobscrevendo uma função/propriedade
class Capivara:Animal {
    func capis(){
        print("A capis ta andando.")
    }
    
}


var mimoso:Boi = Boi()
mimoso.movimentar()

// Quando utilizo o polimorfismo (override) consigo utilizar um método da SuperClass e alterar seu valor em um objeto desejado
var vava:Capivara = Capivara()
vava.movimentar()


// Class só pode herdar de uma única class. Para herdar de mais uma class seria necessário a utilização de protocolo.


// Exercícios.


class Funcionario{
    var nome:String
    var salario:Double
    var cpf:Int
    
    init(nome:String,salario:Double,cpf:Int){
        self.nome = nome
        self.salario = salario
        self.cpf = cpf
}
    
    func bonus()->Double{
        return 0.2
    }
}

 
    class Programador:Funcionario {
        var plataformaDeTrabalho:String = "iOS"
        
        override func bonus() -> Double {
            return self.salario * 0.2
        }
    }
    
    class Designer:Funcionario {
        var ferramentaPref:String = "Sketch"
        
        override func bonus()->Double{
            return self.salario * 0.15
        }
    
//
        }
    
    

print("Exercicio 01")

var trabalhador1:Programador = Programador(nome: "Caio", salario: 18.500, cpf: 123456789)
print("O profissional \(trabalhador1.nome), que desenvolve para plataforma \(trabalhador1.plataformaDeTrabalho) tem o salario de \(trabalhador1.salario)k e o bonus será \(trabalhador1.bonus())k.")

var trabalhador2:Designer = Designer(nome: "Arthur", salario: 9.000, cpf: 987456121)
print("O profissional\(trabalhador2.nome), que desenvolve para plataforma \(trabalhador2.ferramentaPref) tem o salario de \(trabalhador2.salario)k e o bonus será \(trabalhador2.bonus())k.")




print("____________________________________________________________________")

print("Exercicio 02")

class Veiculo {
    var cor:String
    var preco:Float
    var quantidadePassageiros:Int
    
    
    init(cor:String,preco:Float,quantidadePassageiros:Int){
        self.cor = cor
        self.preco = preco
        self.quantidadePassageiros = quantidadePassageiros
      
    }
    
     func calculaCombustivel(km:Float) -> Float {
     return km * Float(quantidadePassageiros)
    
    
    }
    
}

class Carro:Veiculo {
    var tamanhoRoda:Int

    init(tamanhoRoda:Int,cor:String,preco:Float,quantidadeDePassageiros:Int){
        self.tamanhoRoda = tamanhoRoda
        
        super.init(cor: cor, preco: preco, quantidadePassageiros:quantidadeDePassageiros)
    }
    
}

class Aviao:Veiculo {
    var piloto:String
    var ciaAerea:String
    
    init(piloto: String, ciaAerea: String, cor: String, preco: Float, quantidadePassageiros:Int) {
        self.piloto = piloto
        self.ciaAerea = ciaAerea
        super.init(cor: cor, preco:preco, quantidadePassageiros: quantidadePassageiros)
    }
    

  }


var sandero:Carro = Carro(tamanhoRoda: 14, cor: "preto", preco: 75.000, quantidadeDePassageiros: 5)
var sprint:Carro = Carro(tamanhoRoda: 12, cor: "prata", preco: 180.00, quantidadeDePassageiros: 18)
var jato:Aviao = Aviao(piloto: "Pedro", ciaAerea: "Latam", cor: "Vermelhor", preco: 2000000, quantidadePassageiros: 300)

print(sandero.calculaCombustivel(km: 400))
print(sprint.calculaCombustivel(km: 400))
print(jato.calculaCombustivel(km: 400))

// Para Class -> Quando queremos trabalhar principalmente a Herança
// Estou criando um objeto (user), dependendo da orientação para que criei, posso fazer uma Struct pois vou apenas receber dados dele.
//


// Classe aceita -> Herança e Protocolos
// Struct aceita -> Protocolos

