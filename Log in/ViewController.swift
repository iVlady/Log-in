//
//  ViewController.swift
//  Log in
//
//  Created by Vlad Vinogrotskiy on 25.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logInButton.layer.cornerRadius = 15
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let loggedInVC = segue.destination as? LoggedInViewController else { return }
        loggedInVC.textArea = userNameText.text
    }
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameText.text = nil
        password.text = nil
    }

}

