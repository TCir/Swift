import UIKit


let luckNumber = Int.random(in: 0...20)

func luckCalculator(){
    
    
    
    // Utilizando if e els
    if luckNumber ==  1 {
        print("Este número quase nunca cai, número 1.")
    }else if luckNumber <= 99{
        print("Ainda nem passou de 100.")
    }else if luckNumber >= 100 && luckNumber <= 499 {
        print("Esta no caminho da metade.")
    }else if  luckNumber >= 500 && luckNumber <= 999 {
        print("Você passou da metade, esta quase.")
    }else {
        print("Você acertou os 1%")
    }
    
    // Utilizando switch case
    
    switch luckNumber {
    case  1:
        print("Este número quase nunca cai, número 1.")
    case  ...99:
        print("Ainda nem passou de 100.")
    case 100 ... 499:
        print("Esta no caminho da metade.")
    case 500 ... 999:
        print("Você passou da metade, esta quase.")
    case 1000:
        print("Você acertou os 1%")
    default:
        print("Nenhum caso foi atendido")
        
    }
}
luckCalculator()
 

var weekDay:Int?

weekDay = luckNumber

func discoveryDay(){
    
    switch weekDay{
    case 1:
        print("Segunda-feira")
    case 2:
        print("Terça-feira")
    case 3:
        print("Quarta-feira")
    case 4:
        print("Quinta-feira")
    case 5:
        print("Sexta-feira")
    case 6:
        print("Sábado")
    case 7:
        print("Domingo")
    default:
        print("Error")
        
    }
}

discoveryDay()
