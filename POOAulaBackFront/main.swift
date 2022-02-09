//
//  main.swift
//  POOAulaBackFront
//
//  Created by Thiago Valentim on 08/02/22.
//

import Foundation

// Um Objeto
// Contém um Atributo/Propriedade = são suas caracteristicas
// Ações = função/metodo
// A "class" é considerado um elemento como String,Float, e por isso o nome de toda class precisa começar com letra maiuscula.Ex: Casa

class Casa{
    
    var metragemQuadrada:Double = 144.00
    var quantidadeDeComos:Int = 8
    var eAssombrada:Bool = true
    var quantidadeDeJanelas:Int = 4
    var corParede:String = "marrom claro"
    var eSobrada:Bool = false
    
    func abrirPorta(){
        print("A porta abriu")
    }
    
    func desasombrarCasa(){
        print("A casa foi libertada")
    }
    func luzesAcessa() ->Bool{
        return false
    }
    
    func quantidadeDeCarrosNaGaragem()-> Int{
        return 4
    }
    
}

// minhaCasa é uma variável e sua tipagem é do tipo 'Casa'. como poderia ser do tipo String,Int...etc
var minhaCasa:Casa = Casa()
print(minhaCasa.corParede)

minhaCasa.abrirPorta()

// criando uma variável do tipo Bool.. e tenho a função 'luzesAcesas' tem o retorno do tipo Bool, por isso funciona.
var aMinhaLuzEstaAcesa:Bool = minhaCasa.luzesAcessa()
// terei impresso aqui o que a função 'luzesAcesa' estiver retornando.
print(aMinhaLuzEstaAcesa)


// Opcionais

// Criando uma variável com valor opcional. Se pedir para printar, terei um valor = nil
var idade:Int?
// Se a variável ainda não tiver valor, será atribuido o valor de 10
print(idade ?? 10)
idade = nil
// chamado de medidas de conteção quando coloco uma condição
// neste caso estou dizendo que: se não atribuir nenhum valor para a variável idade, atribua pra ele o valor 10.
print(idade ?? 10)


// Novo exemplo
// criando uma variável do tipo opcional
var nomeAluno:String?

//nomeAluno = "Thiago"
// Irá mostrar o nome Thiago com Opcional
print("Abaixo irá mostrar com opcional")
print(nomeAluno)
// Utilizando a contenação consigo tirar o opcional, e irá mostrar o valor que foi atribuido.
// Se nomeAluno não receber valor, irá mostrar Valentim
print("Abaixo irá mostrar apenas o nome")
print(nomeAluno ?? "Valentim")
// Poderia ser utilizando também da outra forma, onde existen a conteção onde se nomeAluno não tiver valor irá mostrar Márcia..
// Como nomeAluno recebeu o valor de Thiago, irá mostrar Thiago
// Se nomeAluno não receber valor, irá mostrar Márcia
var outroAluno:String = nomeAluno ?? "Márcia"
print(outroAluno)





// Criando um objeto
var aCasadoLucas:Casa?
//Dando vida para ao objeto, para ele conseguir puxar os valores
// Instanciando um objeto
aCasadoLucas = Casa()
// quando passo um valor, consigo obter uma variavel 'atributo'
print(aCasadoLucas?.corParede)
// quando instanciei também consigo obter um método
aCasadoLucas?.desasombrarCasa()



// criando uma nova class
class Pessoas{
    var nome:String = "Thiago"
    var peso:Double = 82
    var altura:Double = 1.84
    
    func correr (){
        print("O \(nome) gosta de correr")
    }
}

var thiago:Pessoas = Pessoas()
print(thiago.peso)
print(thiago.nome)


//    AGORA VAMOS TRABALHAR COM UM OBJETO SENDO OPCIONAL
// QUANDO SE TRATA DE UM OBJETO OPCIONAL, O PROPRIO SWIFT IRÁ COMPLETAR AO CHAMAR ELE DENTRO DE UM PRINT
// como não foi instanciado, irá apresentar apenas nil
// Se não dou uma instância, eu não dou vida para um objeto.
var lucas:Pessoas?   // CRIANDO UM OBJETO OPCIONAL
print(lucas?.peso)
print(lucas?.nome)
// se chamar o método ou seja, instanciar ai sim terei resultados, apresentara com um Optional
lucas = Pessoas()  // CRIANDO UM OBJETO OPCIONAL Porém foi INSTANCIADO, deu vida
print(lucas?.peso)
print(lucas?.nome)

// Se eu faço a 'conteção' eu retiro o optional do meu resultado
lucas = Pessoas()
// Dessa forma irá apresentar os valores atribuidos na classe.
print(lucas?.peso ?? 150)
print(lucas?.nome ?? "Fabio")
