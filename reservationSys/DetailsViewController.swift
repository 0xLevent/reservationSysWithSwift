//
//  DetailsViewController.swift
//  reservationSys
//
//  Created by Levent KINACI on 1/26/24.
//

import UIKit

class DetailsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let gunlerDizisi = ["Pazartesi", "Sali", "Carsamba", "Persembe", "Cuma"]
    
    let yemekDizisi = ["kizartma", "sulu et yemegi corba pilav", "sulu et yemegi corba pilav", "sulu et yemegi corba pilavsulu et yemegi corba pilav", "sulu et yemegi corba pilav"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gunlerDizisi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! NewsCell
        cell.gunLabel.text = gunlerDizisi[indexPath.row]
        cell.yemekLabel.text = yemekDizisi[indexPath.row]

        return cell
    }
    

   
    

 

}
