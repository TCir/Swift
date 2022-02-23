import UIKit


// Criando uma , utilizo o var e logo em seguida o nome dessa variavel, apos isso vem o = que será o valor da minha variavel.
var str = "Hello, playground"

// Uma vez que a variavel foi criada, não preciso utilizar o VAR para fazer a modificação de seu valor, basta repetir a variavel e o nome que quero atribuir a ela nesmo momento.
str = "Goodbye"
var favoriteShow = "Doctor House"

favoriteShow = "The Big Bang Theory"

// Strings = letras
// inteiros (int) = números
// Uma vez que crio uma variavel e atribuo a ela um tipo, não posso mudar.
var age = 38  // se quiser usar a variavel age com um valor de string não consigo. Ex abaixo
var meaningOfLife = 42
 //meaningOfLife = "Forty two"

// Para representar um int grande, posso utilizar _ entre eles para melhorar a leitura.
var population = 8_000_000


//Strings multilinhas
// Para ter uma string com várias linhas, preciso de uma sintaxe um pouco diferente,  vou utlizar """ (tres aspas duplas no começo e no fim.

var str1 = """
This goes
over multiple
lines
"""
print (str1)

// As strings padrão começam e terminar com aspas, mas nunca devem contar quebras de linhas.
// String padrão abaixo:
var quote = " Change the world your self" // porém fica uma string grande. É ai que entra string com várias linhas
var burns = """
the best laid schemes
O' mice and men
Gang aft agley
"""

// Doubles e Boolens

// Double é a abreviação de "número de ponto flutuante de precisão dupla" = valores fracionarios = 38,1/ 3,14...etc
var pi = 3.141
// Os pares são diferentes dos inteiros, e não se pode misturar eles.

// Booleanos: eles apenas mantem verdadeiro ou falso.
var awesome = true

// Se tiver ponto decimal será Double, se não tiver será inteiro
var myInt = 1
var mydouble = 1.0


// Constantes (let)
// let cria constantes que seus valores apos serem definidos não poderam mais ser modificados
let taylor = "swift"

// Anotações  (para buscar quando se deve usar, e o porque, ver a pagina 28)
// Para conseguir alterar o valor da variavel entre Int ou  double, faço a variavel se explícita
let album:String = "Reputation" // disse para o Swfit que a let (constate) é uma String
let year: Int = 1989 // disse de forma explicita que year é um int (inteiro)
let height: Double = 1.78 // disse de forma explícita que height é um double (fração)
let taylorRocks: Bool = true // defini taylorRocks como um bool (booleano) (true or false)

// Arrays
// Sâo coleções de v alores armazenados como um único valor. Se pegarmos cinco string ou Int, e quisermos salvar todos juntos, isso seria um Array
let john = "Jonh Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john,paul,george,ringo] // Todos os arrays começam e terminam com [] e cada item array é separado por uma vírgula.
// É possivel ler os valores de uma matriz escrevendo o número entre []..Lembrando que a contagem começa em "0".
// NO array acima temos apenas 4 valores, então começa [0,1,2,3]
// Para ler um valor específico basta dizer o nome da let seguido de [] com a posição do valor dentro.
beatles [1]

//Sets
//São coleções de valores como matrizes, porém tem 2 diferenças:
//1. Os itens não tem ordem no armazenamento;
//2. Nenhum item ou valor pode aparecer duas vezes em um  "set"
//    Como eles são desordenados, não é possível  ler valores de um conjunto usando posições númericas como se faz na matriz (array)
let colors = Set(["red","green","blue"])

//Se tentar inserir um item duplicado em um conjunto, as duplicatas serão ignoradas.
let colors2 = Set(["red","green","blue","red","blue"]) // Só ira ler um vez cada cor repitida.

//       POR QUE OS CONJUNTOS SÃO DIFERENTES DO ARRAYS?
//  Cada um tem suas diferenças e da para se utilizar cada um de acordo com a necessidade.
// Conjuntos: Não são ordenados e não podem conter duplicatas; como os conjuntos não precisam organizar, é possivel encontrar um valor muito mais rapidamente nele

// Array: mantêm a ordem que foi criada e podem conter duplicatas;é mais demorado pois para identificar um valor é necessários verificar do primeiro ao último, em ordem.

// Portando os "sets" são uteis para momentos que você quer saber se tal produto existe.

//Tuplas
// Permite armazenar vários valores juntos em um único valor. Difere da matriz nos seguintes aspectos:
// Uma vez criado não é possível adicionar ou remover itens, eles são fixos em tamanho;
// Você não pode alterar o tipo de itens em uma tupla, tem os mesmos tipos que foram criados;
// É possive acessar itens em uma "tupla" usando posições numéricas ou nomeando-os, porém o Swift não permite que leia  o número ou nome.
var name = (first:"Taylor",midle:"Thiago",last:"Swift") // Para acessar utilizo posições numéricas começando em 0
name.0   // Portando será a "variavel" (name) seguido de ponto e a posição do valor que quero buscar.
name.1
name.2
name.first  // Posso acessar também usando seu nome..

// Uma tupla nos permite montar com um nome e com tipo (string, inteiro, booleano)
var person = (name:"Paul", age:40, isMarried: true)
person.name
person.age
person.isMarried             // uma tupla combina string, inteiro, booleano em um mesmo valor.

// Exemplo de um array:
var website = ["Apple","www.apple.com"]
website[0]
website[1]

// Exempre de uma tupla:
var website1 = (name:"Apple", url:"www.apple.com")
website1.0
website1.1

// Os Dictionaries nos dão parte da segurança do nome das tuplas, mas podem crescer e mudar como arrays.

// REGRAS PARA SABER QUANDO UTILIZAR : MATRIZES(arrays), SETS  E TUPLAS
// Se precisar de uma coleção fixa e específica de valores relacionados, onde cada item tem uma posição ou nome preciso, uso TUPLA.
let address = (house: 555, street: "Emílio de Vasconcelos", city: "Sete Lagoas")
// Se precisar de uma coleção de valores que devem ser únicos ou precisa ser capaz de verificar se um item específico está lá extremamente rapidamente, uso SET.
let set = Set(["aardvark","astronaut","azalea"])
// Se precisar de uma coleação de valores que podem conter duplicatas ou se a ordem de seus itens forem importante, uso ARRAY.
let pythons = ["Gustavo","Fred","Wagner","Vinicius","Thiago"]
                                     // Os "arrays" são de longe o mais utilizado

// arrays(matriz): mantêm a ordem e podem ter duplicatas
// set(conjunto): são desordenados e não podem ter duplicadas
// tuplas: tem valores fixos de tipos fixos dentro deles.


// Dicionários
//São coleções de valores como arrays, que posso acessar usando o que quiser.
// A maneira mais comum de armazenar dados de dicionário é usando strings.
// Dicionario para armazenar a altura usando nomes.
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
    ]
heights["Taylor Swift"]

// Nota: ao usar anotações de tipo, os dicionários são escritos entre colchetes com dois pontos entre o identificar e os tipos de valor.
      // [String:Double]
        // [String:String]
// Dicionarios permite escolher uma "key" que identifica o item que queremos adicionar/ Matrizes apenas adicionam cada item sequencialmente.



// Valores padrão do dicionário:
let favoriteIceCream = [
    "Thiago":"pistache",
    "Márcinha": "napolitano"
]
favoriteIceCream[
"Helen", default:"morango"
]
favoriteIceCream["Thiago"]
favoriteIceCream["Márcinha"]
favoriteIceCream["Helen"]


// Criando coleções varias:
            // Dicionário vazio:
var teams = [String:String]()     // não esquecer doabrir e fechar parênteses ao final

            // Matrix vazia:
var results = [Int]() // não esquecer doabrir e fechar parênteses ao final

// A exceção é a criação de um conjunto vazio, é feito de forma diferente:
var word = Set<String>()
var numbers = Set<Int>()

// Enum:
//Amazena  grupos de valores relacionados de uma maneira que torna mais fácil de usar.
// Ele determina quais valore estão permitidos entrar como Result
enum Result {
    case success
    case failure
}

let result4 = Result.failure    // Isso impede que uso strings diferentes a cada vez.

// os Enum nos permite  além de amazenar um valor simples, posso armazenar valores associados anexados a cada caso. Isso permite que seja anexado informações adicionais às duas enums para representar dados diferenciados. Ex:

enum Activity {
    case bored
    case running
    case talking
    case singing             // isso nos permite saber que tem alguem falando algo, mas não sabemos sobre o que.
}
// Os valores associados a Enum nos permitem adicioanr estes detalhes adicionais:

enum Activity1 {
    case bored
    case running(destination:String)
    case talking (topic: String)    // detalhes de quem esta falando poderá ser adicionado
    case singing (volume: Int)    // detalhes de quem esta cantando poderá ser adicionado
}

// Agora posso ser mais preciso, e dizer que alguem esta falando sobre filmes:
//  let talking = Activity.talking(topic:"movies")

// Um breve resumo até aqui é encontrado na página 49.


// Operadores aritméticos
let firstScore = 12
let secondScore = 4
// Podemos adicionar e substrair usando + e - :
let total = firstScore + secondScore
let difference = firstScore - secondScore
// Podemos multiplicar e dividir usando * e /
let product = firstScore * secondScore
let divided = firstScore / secondScore

// Float = número decimal negativo
// Double = número decimal positivo

// Não é possivel adicioanr um Int a um Double, não posso multiplicar um Float com um Int e assim por diante.

// Operador de resto de divisão dedicado (usado para calcular o resto após uma divisão)
// vendo porque é útil, Ex:
//                           Como mostrar que falta 465 dias para um evento:
                           // vamos começar o código assim:
let weeks = 465/7
print("There are \(weeks) weeks until the event.")  // Porém isso não é verdade, o Swfit dividiu os dois números inteiros e arredondar para zero para fazer um inteiro.  465/7 = 66.42857 semanas.

// Fazendo uma outra tentativa dizendo ao Swift para usar um double ao inves de um Int. teremos uma reposta mais precisa:

let weeks1: Double = 465/7
print("There are \(weeks1) weeks until the event.")

// Agora temos algo que é tecnicamente correto, porém não é útil. Como saber quantos dias é .4285 dias
//             É aqui que entra o operador resto:
let weeks2 = 465/7     // faz a divisão e arredonda para 0
let days = 465 % 7     // usa o operador de resto para calcular quanto sobrou
print("There are \(weeks2) weeks and \(days) days until the event")  // Graças ao "operador resto" tenho como resposta 66 semanas e 3 dias como respota, + preciso.

let number = 465
let isMultiple = number.isMultiple(of: 7)

// Sobrecarga do operador (+ ; - ; / ; *)
// O que um operador faz, depende de como voce o utiliza
// Ex: o + = como numeros inteiros

let meaningOfLife1 = 30
let doubleMeaning = 30 + 30

// Mas tambem posso juntar strings usando + :
let fakers = "Fakes gonna"
let action = fakers + "fake"

// E possivel usar + para juntar matrizes:
let firstHalf = ["Jhon","Paul"]
let secondHalf = ["Geroge","Ringo"]
let beatles1 = firstHalf + secondHalf

// Lembrando que nao posso adicionar um inteiro a uma string porque nao faz sentido
// 30 + "Fakes gonna"
// Dessa forma, posso utilizar todos os operadores onde for possivel. Claro que nao vou utilizar - para subtrair uma string.

//      Operacoes de atribuicao composto
// `e a utilizacao para atribuirem a parte de tras resultado para qualquer variavel que esta em uso , utilizo o perador e logo apos vem um =
var score = 95
score -= 5

// Posso tambem adicionar uma string a outra usando +=
var quote1 = "A chuva em Sete Lagoas acaba provocando muitos"
quote1 += "buracos"


//       Operadores de comparacao
// Funcionam quase como na matematica, sendo acrescentado alguns
// == Verifica se dois valores sao iguais;
// != (pronuncia-se 'nao `e igual) para verificar se dois valores nao sao iguais;
// <    >  =   menor, maior e igual
// Funcionam em String tambem

enum Sizes: Comparable{
    case small
    case medium
    case large
}
let firt = Sizes.small
let second = Sizes.large
print(firt<second)   // isso imprimirá: true , porque Swift small vem antes de large na lista de casos enum.

// CONDIÇÕES
// É possível atribuir condições aos operadores usando as instruções "if". Basta atribuir uma condição ao Sfift e se essa condição for verdade, ele executará o código que foi escolhido.
// Vamos usar a função print().

let firstCard = 1
let secondCard = 20

if firstCard + secondCard == 21 {
    print("BlackJack Ganhador!")                 // o código entre {} será impressa se a condição coloca com o "if" for verdadeira
} else{
    print("Regular cards")                        // se não for verdadeira a condição, usando o "else" será impressa outra mensagem
}
 
// É possível encadear condições usando else if:
if firstCard + secondCard == 2 {
    print("Aces - Lucky!")
} else if firstCard + secondCard == 21 {
    print("Ganhou outra vez")
}  else {
        print("Perdeu de novo")             // Foi implementado mais 2 condições
    }
    
// Quando usar o "if" e quando usar o "else if"
let score0 = 900
// Posso escrever uma condição simples para verificar se pontuação esta a cima de 9.000, como esta:
if score0 > 9000 {
    print("It's over 9000!")
}
// Agora se quero escrever uma mesagem caso a pontuação esteja abaixo de 9.000, seria:
if score0 > 9000 {
    print("It's over 9000")
}
if score0 <= 9000 {
    print ("It's not over 9000")
}
// E é aqui que o "else" entra: se a condição que verificamos não fosse verdadeira, execute este código.
if score0 > 9000 {
    print("It's over 9000")
} else {
    print ("It's não over 9000")
}
// Caso queira implementar trés respostas para trés resultados diferentes:
let score2 = 5008
if score2 > 5000 {
    print("Eita é maior que 5Mil")
} else {
    if score2 == 5000 {                     // Tenho que lembrar que para comparar a igualdade preciso acrescentar um if score == na condição
    print("Vishh é igual a 5Mil")
} else {
    print(" Deu ruim é menor que 5mil")
    
   }
}

// Agpra é possível simplificar mais, usando o "else if" (detalhe, precisa vim diretamente depois dele):
let score3 = 2001
if score3 > 2000 {
    print("Estamos aprendendo")
} else if score3 == 2000 {
  print("Pode ser complicado mas não é impossível para mim")
} else {                                // Para obter a resposta caso seja menor que o score definido, não preciso repedir score =...
    print("Um dia por vez e consolidamos")
}                                              // dessa forma fica um pouco mais fácil de ler  e entender o código, ao inves de ter as condições aninhadas, temos um único fluxo.
// É possível ter quantos "else if" quiser, porém preciso de exatamente UM if ou UM else, para construir a condição.

// Combinações de condições
   // Dois operadores especiais :
             //  && (pronunciado como "e")  As  duas ou mais condições precisam  todas ser verdadeiras
             //  || (pronunciado como "ou") Um ou outra condição precisa ser verdadeira

// Utilizando  "e" que é &&
let age1 = 9
let age2 = 21
if age1 > 18 && age2 > 18 {
    print("Both are over 18")              // A condição fala que as duas idades precisam ser maior que 18, como a primeira não é não passa, portanto não imprime
}
// Utilizando "ou" que é ||
 if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}                                           // Sempre que usar && e || em uma única condição, preciso usar parênteses para tornar o resultado claro.

// Operador "ternário" = utiliza trés valores ao mesmo tempo.
// Ele verifica uma condição especifica no primeiro valor, e se for verdadeiro retorna o segundo valor, mas se for falso retorna o terceiro valor.

// Exempre do uso do ternário ( condição dai vem a "?" o valor agora vem ":" valor)
let firstCardis = 10
let secondCardis = 10
print(firstCardis == secondCardis ? "Cards are the same" : "Cards are different")  // Podemos escrever a mesma cosisa usando uma condição regular (if e else por ex)
// o uso do ternário deixa o código muito curto. Porém, dificil de ler. O interessante é evitar o "ternário" sempre que possível.


// Se precisar usar muito if e else if, é melhor usar uma construção diferente conhecida como "switch case".
// Usand essa abordagem é possivel escrever a condição uma vez e lsitar todos os resultados possíveis e o que deve acontecer para cada um deles.
let weather = "Gustavo"  // constante de cliema contendo a "string sunny"
// Vamos usar um bloco "switch" para imprimir uma das quadro mensagens diferente;
switch weather {
case "rain":
    print("Brig an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
print("Enjoy your day")

} // a opção default é para que caso seja diferente das condições, ainda assim tenha uma mensagem


