//
//  addPatientViewController.swift
//  MonitorRemoto
//
//  Created by user183235 on 11/22/20.
//

import UIKit

class addPatientViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var tableView: UITableView!
    
    //Linha temporaria --> usada apenas para ilustrar funcionamento da pagina
    let patientsArray = ["Ana Maria da Silva", "Angelica Souza", "Betina Pereira", "Carlos da Silva", "Carlos Siqueira", "Gabriele Cunha", "Tomas Ramos", "Tamires Soarez", "Valeria Ferreira"]
    
    var searchPatient = [String]()
    
    var searching = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension addPatientViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int) -> Int {
        if searching {
            return searchPatient.count
        } else {
            return patientsArray.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellPaciente = tableView.dequeueReusableCell(withIdentifier: "cellPaciente")
        
        if searching {
            cellPaciente?.textLabel?.text = searchPatient[indexPath.row]
        } else {
            cellPaciente?.textLabel?.text = patientsArray[indexPath.row]
        }
        
        return cellPaciente!
    }
    
}

extension addPatientViewController:UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchPatient = patientsArray.filter({$0.prefix(searchText.count) == searchText})
        searching = true
        
        tableView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searching = false
        searchBar.text = ""
        tableView.reloadData()
    }
    
}
