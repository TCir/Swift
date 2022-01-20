//
//  main.swift
//  MetodosConstrutores
//
//  Created by Thiago Valentim on 19/01/22.
//

import Foundation

class Pessoa {
    
 // Quando se trabalha com 'construtores' não tem a necessidade de já atribuir um valor para uma variavel
 // Mas preciso setar um valor qualquer para as variáves, então pode colcoar valorOpcional -> ?
    // var altura:Double?
    // var nome:String?
    
 // Uma solução mais segura é a utilização do método Construtor.
    
//Declarando as variáveis sem atribuir valores
    var nome:String
    var altura:Double
    var sexo:String
    var profissao:String
    var corCabelo:String
    var idade: Int
    var boca:Bool
    // criar uma variavel e deixar ela com valor opcional como exemplo
    var barba:Bool?    // deixo com o seu valor em aberto
    
// Criando um método/Função Construtor
// Como a variavel 'barba' esta com o valor em aberto, não preciso referenciar ela no Construtor
    init(nome:String,altura:Double,sexo:String,profissao:String,corCabelo:String,idade:Int,boca:Bool)
    {
        // desta maneira a variável externa, esta corresponde ao parámetro de mesmo nome
        self.nome = nome
        self.altura = altura
        self.sexo = sexo
        self.profissao = profissao
        self.corCabelo = corCabelo
        self.idade = idade
        self.boca = boca
        
    }
}

 // criando um objeto
// desta maneira ao instanciar meu objeto, já tenho que atribuir a todas as variáves que se tornaram as caracteriscitas do meu objeto.
//Recaptulando: para gerar instáncia(dar vida ao objeto) preciso abrir () após o nome da class
// O método construtor é quem constroi a Classe em si
var thiago:Pessoa = Pessoa(nome: "Thiago", altura: 1.79, sexo: "Masculino", profissao: "Software Engineer", corCabelo: "Preto", idade: 33, boca: true) // não terei barba dentro das caracteristicas instanciadas

// vai puxar o valor atribuido a nome dentro do método construtor
print(thiago.nome)

// vou conseguir rodar o software normalmente, porém não terei valor para ela, pois não atribui nada
 print(thiago.barba)
// atribuindo um valor para barba já que estava sem
thiago.barba = true
// ira apresentar o valor, porém vira com a observação de que o valor 'true' é "Optional" já que pode ou não
// ser um valor desejado
print(thiago.barba)


// Fica demonstrado então que se as variáves são criadas ser ter seus valores setados, fica obrigatório
// a utilização doo Construtor. 

 

