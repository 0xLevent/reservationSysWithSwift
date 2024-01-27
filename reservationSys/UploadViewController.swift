
import UIKit

class UploadViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tabView: UITabBarItem!
    
    @IBOutlet weak var tableView: UITableView!
    
    let fakulteDizisi = ["Hfttf", "merkez", "tip", "salihli"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
               tableView.frame = view.bounds
               tableView.dataSource = self
               tableView.delegate = self
               view.addSubview(tableView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fakulteDizisi.count
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var kullaniciSecimi = fakulteDizisi[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = fakulteDizisi[indexPath.row]
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            //destinationVC.
        }
    }
    
}
