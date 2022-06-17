import UIKit




func luckCalculator(){
    
    let luckNumber = Int.random(in: 0...1000)
    
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

}

luckCalculator()
