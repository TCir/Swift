//
//  ViewController.swift
//  PrimeiroAppTextField
//
//  Created by Thiago Valentim on 22/02/22.
//

import UIKit


//UIViewControoller e UITextFieldDelegate são Protocolos  que a viewController irá herdar
class ViewController: UIViewController {

 
    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var enderecoTextField: UITextField!
    @IBOutlet weak var senhaTextField: UITextField!
    @IBOutlet weak var cadastrarButton: UIButton!
    
    // configurações iniciais para startar o app
    override func viewDidLoad() {
        super.viewDidLoad()

        
 // assinando o contrato, referenciando a nameText com a ViewController
 // O delegate não é obrigatório, posso utilizar ou não.
//  Utilizo ele quando quero utilizar métodos para as textFiedl
        self.nomeTextField.delegate = self
        self.enderecoTextField.delegate = self
        self.senhaTextField.delegate = self
        
//// adicionando border
        self.nomeTextField.layer.borderWidth = 2.0
        self.senhaTextField.layer.borderWidth = 2.0
        self.enderecoTextField.layer.borderWidth = 2.0
        
// adicionando a cor da borda ao nascer
        self.nomeTextField.layer.borderColor = UIColor.lightGray.cgColor
        self.enderecoTextField.layer.borderColor = UIColor.lightGray.cgColor
        self.senhaTextField.layer.borderColor = UIColor.lightGray.cgColor
        
        
//// adicionando placeholder para as textFiedl
        self.nomeTextField.placeholder = "Digite seu nome."
        self.enderecoTextField.placeholder = "Digite seu endereço."
        self.senhaTextField.placeholder = "Digite sua senha."
        
        self.nomeTextField.delegate=self
        self.nomeTextField.delegate = self
        self.senhaTextField.delegate = self
//        self.tappedButton.delegate = self
    }
    
    
    
    @IBAction func cadastroButton(_ sender: UIButton) {
        // mensagem que irá aprecer quando o botão cadastrar for ativado.
        print("Cadastro realizado com sucesso.")
        self.cadastrarButton.isEnabled = false
    }
}
    





//MARK: -UITextFieldDelegate

// Uma extensão da class -> ViewController
// utilizar sempre que for usar protocolos, por exemplo
// Para melhor visualização do código
// Algumas funções que é possível utilizar com o protocolo Delegate 
extension ViewController:UITextFieldDelegate {

//dá o foco no textField que estiver selecionado.
// Não é momento para validar nada
    func textFieldDidBeginEditing(_ textField: UITextField){
        print(#function)
        
        // Para colocar foco no textField estiver em foco
        textField.layer.borderColor = UIColor.blue.cgColor
    
    }

// Quando entra nessa função é quando fazemos a validação ou seja o campo já foi preenchido
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
// apos clicar em return no nome irá pular para o textfield e-mail
//        self.enderecoTextField.becomeFirstResponder()
        // condição para alterar a cor da borda do textField
        
        // É preciso criar uma validação para cada  textField
        if textField == self.nomeTextField {
            
            if self.nomeTextField.text == ""{
                self.nomeTextField.layer.borderColor = UIColor.red.cgColor
            }else  {
                self.nomeTextField.layer.borderColor = UIColor.lightGray.cgColor
            }
            
            if textField == enderecoTextField {
                
                if self.enderecoTextField.text == ""{
                    self.nomeTextField.layer.borderColor = UIColor.red.cgColor
                }else  {
                    self.nomeTextField.layer.borderColor = UIColor.lightGray.cgColor
                }
            }
            
           
            if textField == senhaTextField {
                
                if self.senhaTextField.text == ""{
                    self.nomeTextField.layer.borderColor = UIColor.red.cgColor
                }else  {
                    self.nomeTextField.layer.borderColor = UIColor.lightGray.cgColor
                }
            }
            
            if self.nomeTextField.text != "" && self.enderecoTextField.text != "" && self.senhaTextField.text != "" {
                self.cadastrarButton.isEnabled = true
            }else {
                self.cadastrarButton.isEnabled = false
            }
                    
        }
        
              
          
    }
// Responsavel para recolher o teclaado quando clicar em return
// sem a assinatura dentro da função Pai, não ira dispara e não chama essa função
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        // abaixa o teclado
        // tira o foco e abaixa o teclado
        textField.resignFirstResponder()
        return true
    }
}



// Logica
// se o campo textField name for pressionado e clicado em return, irá pular para o textField email... se clicar novamente em return (estando em email) o declado irá abaixar.
//if textFiel == self.nameTextField{
//
//    emailTextField.becomeFirstResponder()
//}

    
// logica para subir
// Quando estiver foco em um text Field  as bordas ficam azul
// Comando precisa estar dentro do DidiBegin
//textfield.layer.borderColor = UIColor.blue.cgColor


// Comando dentro de DidEnding
// Na saida devo definir as regras de verificação das senhas
// Para quando sair do textFiedl tirar a borda azul
//textfield.layer.borderColor = 0.0        // para tirar a borda azul
