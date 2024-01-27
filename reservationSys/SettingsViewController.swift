//
//  SettingsViewController.swift
//  reservationSys
//
//  Created by Levent KINACI on 1/26/24.
//

import UIKit
import Firebase

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func cikisYapBasildi(_ sender: Any) {
        
        do{
            try Auth.auth().signOut()
            performSegue(withIdentifier: "toViewController", sender: nil)
        } catch{
            print("hata")
        }
        
    }
    

}
