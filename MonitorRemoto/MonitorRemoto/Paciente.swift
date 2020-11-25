//
//  Paciente.swift
//  MonitorRemoto
//
//  Created by user183235 on 11/22/20.
//

import Foundation

class Paciente : Pessoa {
    
    var alergias:[String]
    var outrasPatologias:[String]
    var diagnostico:String
    var prescricao:[String]
    var prontuario:String
    
    init(nome:String, idade:Int, peso:Double, sexo:String, email:String, celular:String, dataNascimento:Date, cpf:Int, grupoDeRisco:Bool, alergias:[String], outrasPatologias:[String], diagnostico:String, prescricao:[String], prontuario:String){
        
        self.alergias = alergias
        self.outrasPatologias = outrasPatologias
        self.diagnostico = diagnostico
        self.prescricao = prescricao
        self.prontuario = prontuario
        
        super.init(nome: nome, idade: idade, peso: peso, sexo: sexo, email: email, celular: celular, dataNascimento: dataNascimento, cpf: cpf, grupoDeRisco: grupoDeRisco)
    }
    
}
