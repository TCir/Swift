//
//  ViewController.swift
//  ColletionView
//
//  Created by Thiago Valentim on 06/03/22.
//

import UIKit

class ViewController: UIViewController {

    // Criando ligacao da colletionView com a ViewControler
    @IBOutlet weak var colletionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    // assinando os protocolos utilizados para conseguir utilizar suas atribuicoes
    // chamando uma funcao que estara fora
    // é nessa funcao onde ficara definido quantas Images e label ira ter na colletion
        colletionView.dataSource = self
        colletionView.delegate = self
        colletionView.collectionViewLayout = UICollectionViewFlowLayout()
    }
}

// Criando uma extensao de ViewController, e atribuindo ao protocolo dataSource
extension ViewController: UICollectionViewDataSource {
   // implementando o numero de itens que tera a collection
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count // ira retornar o numero de filmes que tiver no array
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
  // criando uma constante para as celulas
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieCollectionViewCell", for: indexPath) as! MovieCollectionViewCell
   // chamando a funcao que tem como  argumento 'movies' e seu valor sera passado de acordo com a posicao do 'indexPath'
   // ira preencher cada celula com o valor que estiver em cada posicao do array por linnha (row)
        cell.setup(with: movies[indexPath.row])
        return cell
    }
}

// Configurando o whidt e o hidth de cada celula
extension ViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // a funcao espera um retorno do tipo CGSize
        // de acordo com o width e o height que ira apresentar quantas linhas tera a colletion.
        return CGSize(width: 180, height: 250)
        // valor para tela do iPhone 11: 200,300
    }
}

// funcao para mostrar o nome quando se clica na imagem
extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
  // ira imprimir o nome
        print(movies[indexPath.row])
    }
    
}
