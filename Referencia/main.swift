//
//  main.swift
//  Referencia
//
//  Created by Thiago Valentim on 23/01/22.
//

import Foundation

//Classe
// Para uma explicação sobre o que é uma classe:
// Utlizando um 'objeto' para explicar classe.
// Um objeto tem várias caractéricticas
// ex objeto: carro
// ex carro (caracteristicas): cor = preto; marca = Renault; cc = 260;
// Um objeto também tem vários ações, conhecido como: métodos/func
// ex carro (métodos): acelerar; fazerCurvas; buzinar; carregarPeso;


// Principal caracteristica de uma CLASSE -> Trabalha com REFERÊNCIA

class Mac{
    var modelo:String
    var ano:Int
    var memoria:Int
    var touchBar:Bool
    var processador:String
// como não passei valor, preciso usar o método construtor
    
    init(modelo:String,ano:Int,memoria:Int,touchBar:Bool,processador:String){
        self.modelo = modelo
        self.ano = ano
        self.memoria = memoria
        self.touchBar = touchBar
        self.processador = processador
    }
}
// criando e instanciando um 'objeto'
var meuMac:Mac = Mac(modelo: "Macbook Pro", ano: 2021, memoria: 16, touchBar: true, processador: "M1")
// criando e instanciando outro objeto com config diferente
var macMyQueen:Mac = Mac(modelo: "Macbook Air", ano: 2020, memoria: 8, touchBar: false, processador: "M1")

// imprimindo o ano do meuMac
print(meuMac.ano)
// imprimindo o ano de macMyQueen
print(macMyQueen.ano)
print("--------------------------------------------------")
// referênciando o meuMac igual ao macMyQueen
print("Informações depois de referênciada")
meuMac = macMyQueen
// imprimindo o ano do meuMac
print(meuMac.ano)
// imprimindo o ano de macMyQueen
print(macMyQueen.ano)
print("--------------------------------------------------")
// atribuindo um novo valor para Mac
print("Alterei a memória apenas de meuMac")
meuMac.memoria = 32 // as alterações que fizer para um, vão para o outro
print(meuMac.memoria)
print(macMyQueen.memoria)
print("--------------------------------------------------")
// atribuindo um novo valor para macMyQuen
macMyQueen.modelo = "iMac"
// tanto alterando um quanto o outro, terei mudança nos dois
print(meuMac.modelo)
print(macMyQueen.modelo)

// NUNCA ESQUECER:
// Classe trabalha com REFERENCIA, NUNCA ESQEUCER DISTO
 


