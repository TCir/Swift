//
//  Movie.swift
//  ColletionView
//
//  Created by Thiago Valentim on 06/03/22.
//

import UIKit

// criando uma struct
struct Movie{
    let title: String
    let image: UIImage
}

// criando um array
let movies: [Movie] = [
    Movie(title: "Sing 2", image:#imageLiteral(resourceName: "sing2.jpg") ),
    Movie(title: "Avatar 2", image: #imageLiteral(resourceName: "avatar.jpg")),
    Movie(title: "Blade ", image: #imageLiteral(resourceName: "blade.jpg")),
    Movie(title: "Morbius" , image:#imageLiteral(resourceName: "morbius.jpg") ),
    Movie(title: "Nope", image:  #imageLiteral(resourceName: "nope.jpg")),
    Movie(title: "Dr.Estranho: E o mundo da loucura", image: #imageLiteral(resourceName: "stranger.jpg")),
    Movie(title: "The Batman", image:#imageLiteral(resourceName: "theBatman.jpg") ),
    Movie(title: "Top Gun: Maverick", image:#imageLiteral(resourceName: "topgun.jpg") ),
    Movie(title: "Animais Fantasticos: Os Segredos", image: #imageLiteral(resourceName: "animaisfantasticos.jpg")),
    Movie(title: "Scream", image: #imageLiteral(resourceName: "scream.jpg"))
    
]
