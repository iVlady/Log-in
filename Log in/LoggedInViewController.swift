//
//  LoggedInViewController.swift
//  Log in
//
//  Created by Vlad Vinogrotskiy on 25.05.2021.
//

import UIKit

class LoggedInViewController: UIViewController {

    @IBOutlet weak var nameData: UITextField!
    @IBOutlet weak var logOutButton: UIButton!
    
    var textArea: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameData.text = textArea
        logOutButton.layer.cornerRadius = 15
    }
    
    @IBAction func logOutButton(_ sender: UIButton) {
        dismiss(animated: true)
    }

}
