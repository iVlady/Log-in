//
//  ContactsViewController.swift
//  Log in
//
//  Created by Vlad Vinogrotskiy on 30.05.2021.
//

import UIKit

class ContactsViewController: UIViewController {

    @IBOutlet weak var contactsLabel: UILabel!
    var contacts = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        contactsLabel.text = contacts
    }
    

}
