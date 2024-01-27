//
//  ViewController.swift
//  reservationSys
//
//  Created by Levent KINACI on 1/25/24.
//

import UIKit
import Firebase

class ViewController: UIViewController {
  
    
    
    
    @IBOutlet weak var okulNoText: UITextField!
    
    @IBOutlet weak var sifreText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func kayitOlBasildi(_ sender: Any) {
        if okulNoText.text != "" && sifreText.text != ""{
            Auth.auth().createUser(withEmail: okulNoText.text!, password: sifreText.text!) { authdataresult, error in
                if error != nil {
                    self.hataMesaji(titleInput: "Hata", messageInput: error!.localizedDescription)
                }else{
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                }
            }
        }else{
            hataMesaji(titleInput: "Hata!", messageInput: "Kullanici adi sifre girininiz")
        }


    }
    
    
    func hataMesaji(titleInput: String, messageInput: String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func girisYapBasildi(_ sender: Any) {
        
        if okulNoText.text != "" && sifreText.text != ""{
            Auth.auth().signIn(withEmail: okulNoText.text! , password: sifreText.text!) { (authdataresult, error) in
                if error != nil{
                    self.hataMesaji(titleInput: "Hata", messageInput: error!.localizedDescription)
                } else{
                    self.shouldPerformSegue(withIdentifier: "toFeedVC", sender: nil)
                }
                
            
                if error != nil {
                    self.hataMesaji(titleInput: "Hata", messageInput: error!.localizedDescription)
                }else{
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                }
            }
        }else{
            hataMesaji(titleInput: "Hata!", messageInput: "Kullanici adi sifre girininiz")
        }

    }
    

}

