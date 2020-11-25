//
//  ViewController.swift
//  MonitorRemoto
//
//  Created by user183235 on 11/15/20.
//

import UIKit

class loginViewController: UIViewController {
    
    
    @IBOutlet weak var txtLogin: UITextField!
    
    @IBOutlet weak var txtSenha: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func entrarAction(_ sender: Any) {
        if (txtLogin.text == "000000" && txtSenha.text == "1234") {
            performSegue(withIdentifier: "indexPage", sender: self)
        }
        else {
            let alert = UIAlertController(title: "Alerta", message: "Usuario ou senha nao encontrado(s)", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
    }
    

}

