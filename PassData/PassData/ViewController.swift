//
//  ViewController.swift
//  PassData
//
//  Created by Edmond Podlegaev on 08.04.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func loginTapped(_ sender: UIButton) {
        if (usernameTF.text != "" && passwordTF.text != "") {
            performSegue(withIdentifier: "detailSegue", sender: nil)
        } else {
            let alert = UIAlertController(title: "Empty fields", message: "Write your username and password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
        guard segue.identifier == "unwindSegue" else {return}
        guard let sourceViewController = segue.source as? SecondViewController else {return}
        self.resultLabel.text = sourceViewController.welcomeLabel.text
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationViewController = segue.destination as? SecondViewController else {return}
        destinationViewController.login = usernameTF.text
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}
