import UIKit




func luckCalculator(){
    
    let luckNumber = Int.random(in: 0...1000)
    
    if luckNumber ==  1 {
        print("Este número quase nunca cai, número 1.")
    }else if luckNumber <= 50 {
        print("Ainda nem passou de 50.")
    }else if luckNumber <= 450 {
        print("Esta quase chegando na metade.")
    }else if  luckNumber <= 800 {
        print("Este intevalo é bom.")
    }else {
        print("Você esta acima de 800")
    }

}

luckCalculator()
