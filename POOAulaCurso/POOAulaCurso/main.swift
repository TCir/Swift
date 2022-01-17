//
//  main.swift
//  POOAulaCurso
//
//  Created by Thiago Valentim on 16/01/22.
//

import Foundation


// Obejto: Casa
// Atributos/Propriedades= Caracteristicas: qntQuarto, banheiro, qntPortas
// Ações = funções/Métodos:

class Casa {
    var quantidadeDeQuartos: Int = 5
    var banheiro: Bool = true
    var quantidadeDePortas: Int = 8
    var condominio: Bool = false
    
    func reforma(){
        print("Minha casa já foi reformada")
    }
    func abrirJanela(){
        print("A janela esta aberta")
    }
    func luzesAcessas() ->Bool{
        return true
    }
    func quantidadeDeCarrosNaGaragem() -> Int{
        return 4
    }
}

// Criando uma variavel que referencia a Class já criada
var minhaCasa: Casa = Casa()  // Casa() estou instanciando o Objeto, desta forma a variavel minhaCasa irá chamar a class Casa, e chamar todas as propriedades e seus métodos.

minhaCasa.abrirJanela() // não precisei do print porque chamei uma função
print("Tem na casa um total de \(minhaCasa.quantidadeDePortas) quartos." ) // valor de uma propriedade. Colocando um Int no meio de uma String com a propriedade \()

// Criando uma Class com nome Carro
class Carro {

    // Propriedades da Class
    var quantidadeDePortas:Int = 2
    var cor:String = "Cinza"
    var potenciaMotor:Double = 650.0
    var modelo:String = "StepWay"
    var marca:String = "Renault"
    var farolAceso:Bool = false
    private var valorMercado:Double = 74000.0  //esta variável não será vista fora da classe
       
    // Métodos/Função da Class
    // com o 'get' eu consigo pegar o valor desejado
    public func getValorMercado() ->Double{
        return self.valorMercado
    }
    
    //com o 'set' eu consigo 'SETAR" um valor que preciso externamente
    //vou setar o valor externamente, atribundo o novo valor dentro da variavel 'text' que é do mesmo tipo
    
    public func setValorMercado(text:Double){
        self.valorMercado = text
    }
    
    // private -> O lado externo não sabe que a respectiva variavel/método existe
    // public -> Quando quero afirmar para o Swift que esta variavel pode ser modificada externamente
    // public é Opcional.
    
    
}
// Criando um OBJETO que tem o Tipo: Carro com instância Carro()
// Para puxar qualquer informação da Classe, basta chamar a variavel 'carroComprar' seguido de . e qual propriedade ou método quero chamar
var carroComprar:Carro = Carro()

print(carroComprar.farolAceso)

// Quando se cria um objeto, consigo fazer toda manipulação de suas propriedades
// Me retornando um valor diferente ao atribuido inicialmente.
carroComprar.farolAceso = true
print(carroComprar.farolAceso)

// Para acessar o valor de algo que é 'privite'
// Crio uma função do tipo 'public' coloco o seu retorno seja 'self.marca'
// desta maneira consigo acessar a propriedade externamente.
print(carroComprar.getValorMercado())

// setei o novo valor
carroComprar.setValorMercado(text: 68500.0)
print(carroComprar.getValorMercado())




 

