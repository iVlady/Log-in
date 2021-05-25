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
    
    var textArea = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameData.text = textArea
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
