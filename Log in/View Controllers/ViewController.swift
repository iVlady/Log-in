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
    
    private var userName = "User"
    private var passwodIs = "1111"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logInButton.layer.cornerRadius = 10
        userNameText.autocorrectionType = .no
        password.autocorrectionType = .no
        
    }
    
    
    @IBAction func pressForgotUserName(_ sender: UIButton) {
        showAlert(title: "Did you?", message: "The user name is User")
    }
    
    @IBAction func pressForgotPassword(_ sender: UIButton) {
        showAlert(title: "Did you?", message: "The password is 1111")
    }
    
    @IBAction func logInButtonPressed(_ sender: UIButton) {
        if userNameText.text != userName || password.text != passwodIs {
            showAlert(title: "Ooooopppsss", message: "The user name or password isn't valid")
        }
        else {
            performSegue(withIdentifier: "loggedInVC", sender: nil)
        }
    }
    
    
    /*    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let loggedInVC = segue.destination as? LoggedInViewController else { return }
        loggedInVC.textArea = userNameText.text
    }
    
  */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController, let controllers = tabBarController.viewControllers else { return }
        for viewcontroller in controllers {
            if let loggedInVC = viewcontroller as? LoggedInViewController {
                loggedInVC.textArea = userNameText.text
            }
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameText.text = nil
        password.text = nil
    }

    @IBAction func tapToClose(_ sender: UITapGestureRecognizer) {
        userNameText.resignFirstResponder()
        password.resignFirstResponder()
    }
}

extension ViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
