//
//  MovieCollectionViewCell.swift
//  ColletionView
//
//  Created by Thiago Valentim on 06/03/22.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!

    
    // Criado uma funcao de configuracao para popular a colletionView
    // criando uma funcao onde ira receber como argumento a colletion movie
    // sua tipagem sera Movie
    func setup (with movie:Movie){
        // igualando a imagem do Coletion com a imagem da funcao setup
        movieImageView.image = movie.image
        // igualando a label do Coletion com a label da funcao setup
        titleLabel.text = movie.title
    }
     
}
