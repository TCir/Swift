//
//  main.swift
//  praticandoClass
//
//  Created by Thiago Valentim on 06/02/22.
//

import Foundation



// Estudos sobre Class
//Created by Thiago Valentim on 06/02/22.

// Criando uma class que recebe o nome de Dog
// por prática, o nome da classe começa com letra maiscula
// Classe é reference types (tipo de referência)

class Dog{
    // tudo que estiver aqui dentro será uma propriedade ou um método da classe
    // Para começar, é apresentado as propriedades da class dog.
    // para fazer suas propriedades basta criar variáveis da tipagem que melhor descreve tal caracteristica
    // As caracteristicas para aparecerem quando requisitadas precisa ter o print, como as variáveis já necessitam.
    var nome:String = "Alfred"
    var raca:String = "Doubermann"
    var idadeMeses:Int = 8
    var castrado:Bool = false
    var sexo:String = "Macho"
    var corPredominante:String = "Preto"
    // quando declaro uma variável 'private' estou ocultando ela para acesso do lado de fora da classe, dessa forma não consigo printar seu valor
    private var bravo:String = "Bastante, depende de quem aproxima"
    // para conseguir ter acesso de forma externa, é necessário utilizar da  "get" (para puxar o valor) e o "set" (para alterar o valor)
    
    // Fazendo a utilização do get, consigo puxar uma variável 'private' para utilização externa
    public func getbravo() -> String{
        return self.bravo
    }
    // Para alterar/setar um valor de uma variável do tipo PRIVATE, é necessário a utilização do set
    // Fazendo assim é possivel setar para um valor externamente, atribuindo um novo valor.
    // É necessário criar uma função com parámetro, atribuindo o seu tipo)
    // Dentro da função é necessário a utilização do self (para indicar um determinado atributo do objeto e não uma variavel)
    public func setbravo(temperamento:String){
        self.bravo = temperamento
    }
    
    // Em seguida é criado o que a class pode 'Fazer', ou seja seus métodos/funções
    // Para fazer as funções, basta utilizar o comando func
    // Dentro das funções posso chamar qualquer propriedade e seus valores
    func protecao(){
        print("\(nome) é um cachorro da raça \(raca) e é um bom protetor.")
    }
    func levadeza(){
        print("\(nome) é um charro extremamente bagunceiro, normal para a raça \(raca) com \(idadeMeses) meses.")
    }
    
    
}

// Para chamar e utilizar os dados armazenados em uma classe, preciso declarar uma variável e atribuir uma  classe para essa variável.
// Para isso basta fazer --> tipo de variável (var, let)
//                       --> nome da variável (myDog)
//                       --> nome da class (Dog)
//                       --> nome da class com () na frente, dessa forma estou instanciando um objeto. OU SEJA, dando vida para a class, e com isso consigo chamar  suas propriedade e funções

// agora quando chama o objeto 'myDog', tenho acesso a todas as propriedades da class 'Dog'
var myDog = Dog()

//Para mostrar as caracteristicas, basta usar o print e concatenar as variáveis
// Para ter acesso as propriedades, preciso chamar o objeto instanciado
print("\(myDog.nome) é um carro do sexo \(myDog.sexo) e tem \(myDog.idadeMeses) meses.")

// Para chamar as funções quando se trata de class, preciso chamar antes da função o objeto que contem a class
myDog.protecao()  // para chamar a função não preciso utilizar o print, devido já estar contido dentro dela.
myDog.levadeza()

// sem a utilização do get, não conseguiria acessar a caracteristica 'bravo'.
// Abaixo irá mostrar o valor armazenado na variável private dentro da class, o get esta puxando o valor
print("\(myDog.getbravo())")

// Para fazer o reset do valor da variavel Private que esta dentro da class, faço:
//  chamo o objeto/com o '.' consigo ver todas caracteristicas contidas na classe/ uso o 'set' seguido do nome da variável/ chamo o parametro passado dentro da função e atribuo um novo valor de acordo com sua tipagem
myDog.setbravo(temperamento: "Quando vê comida fica obediente")
print(myDog.getbravo())


// Para deixar a Class mais dinâmica utiliza-se o método construtor.
// A utilização do método construtor é interessante pois não existe a necessidade de atribuir valores iniciais para as variáveis(caracteristicas) da classe.
// uma alternativa para o construtor é a utilização da atribuição opcional para as variáveis.
// Ex: var pessoas:Int?   --> ao atribuir '?' apos o tipo, esta sendo informado para o copilador que aquela variável pode ter valor ou não
// PORÉM NÃO É UMA PRÁTICA MUITO SEGURA.     Neste caso a melhor alternativa seria a utilização do método construitor, demonstrado abaixo.
// Criando uma nova class;
 
class Cidade{
    
    // Declarando as variáveis sem atribuir nenhum valor.
    var name:String
    var população:Int
    // quando começar a criar as variáveis sem atribuir valor, irá apresentar um erro, dizendo que não teve a inicialização das variáveis. Tá tudo certo, basta continuar com as declarações das variáveis
    var climaPredominante:String
    var litoral:Bool
    
    // Para criar o método construtor é necessário a utilização do "init"
    // A sua estrutura é --> init () / dentro das () deve conter todas as variáveis da class seguidas do seu tipo./ Apos abra a chave e com a utilização do self. chame todas as variáveis e atribua o seu nome ao valor delas.
                         
    init(name:String, população:Int,climaPredominante:String,litoral:Bool){
        self.name = name
        self.população = população
        self.climaPredominante = climaPredominante
        self.litoral = litoral
    }
    
}

// Para a utilização dos atributos da class, é necessário instanciar um objeto.
// Ao criar um objeto e atribuir a ele a classe "Cidade" poderei adicionar os valores das variáveis
var city:Cidade = Cidade(name: "Sete Lagoas", população: 249, climaPredominante: "Subtropical úmido ", litoral: false)

// Para mostrar as informações, basta chamar o objeto 'city' e qual caracteristica contida na class quero visualizar
print(city.climaPredominante)
print("A cidade de \(city.name) tem uma população de \(city.população) mil habitantes e o clima é \(city.climaPredominante).")


// A utilização de class nos permite atribuir valor de um objeto a outro, por ser 'reference types'
// Veja a seguir o que isso significa:
// Já tem um objeto criado com o nome 'city'. Será criado um novo objeto agora com o nome city2
var city2:Cidade = Cidade(name: "Belo Horizonte", população: 2722000, climaPredominante: "Subtropical úmido", litoral: false)
print("A cidade de \(city2.name) tem uma população de \(city2.população) mil habitantes e o clima é \(city2.climaPredominante).")
// ao imprimir vemos os valores atribuidos para o novo objeto.
// igualando o objeto 1 ao segundo objeto
city2 = city
print("A cidade de \(city.name) tem uma população de \(city.população) mil habitantes e o clima é \(city.climaPredominante).")
print("A cidade de \(city2.name) tem uma população de \(city2.população) mil habitantes e o clima é \(city2.climaPredominante).")
// todos os valores de um objeto foram copiados para o outro.
// Caso faça a alteração apenas de uma caracteristica, será modificado no outro também e vice versa
city2.população = 500 // alterando o valor da variavel população no objeto 'city2'
print(city.população) // ao imprimir o objeto 'city' ele irá ter o valor atribuído ao objeto 'city2'.
// Isso ocorre pela propriedade "reference types" -> quando se igual um objeto ao outro, o que ocorre é que o endereço onde estão armazenadas as informações de um objeto se torna o endereço do outro, e assim tudo que se altera em um objeto, é atribuído ao outro diretamente.




// Uma outra propriedade importante da Class é a Herança.
//
//
//
// Falta estudar a herança.


