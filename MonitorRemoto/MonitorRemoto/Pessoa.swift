//
//  Paciente.swift
//  MonitorRemoto
//
//  Created by user183235 on 11/22/20.
//

import Foundation

class Pessoa {
    
    var nome:String
    var idade:Int
    var peso:Double
    var sexo:String
    var email:String
    var celular:String
    var dataNascimento:Date
    var cpf:Int
    var grupoDeRisco:Bool
    
    init(nome:String, idade:Int, peso:Double, sexo:String, email:String, celular:String, dataNascimento:Date, cpf:Int, grupoDeRisco:Bool){
        
        self.nome = nome
        self.idade = idade
        self.peso = peso
        self.sexo = sexo
        self.email = email
        self.celular = celular
        self.dataNascimento = dataNascimento
        self.cpf = cpf
        self.grupoDeRisco = grupoDeRisco
        
    }
    
}
