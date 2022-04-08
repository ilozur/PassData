//
//  SecondViewController.swift
//  PassData
//
//  Created by Edmond Podlegaev on 08.04.2022.
//

import UIKit

class SecondViewController: UIViewController {
    var login: String?
    @IBOutlet weak var welcomeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let login = self.login else {return}
        welcomeLabel.text = "Welcome, \(login)!"
    }
    @IBAction func logoutTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindSegue", sender: nil)
    }
    
}
