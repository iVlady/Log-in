//
//  AboutMeViewController.swift
//  Log in
//
//  Created by Vlad Vinogrotskiy on 30.05.2021.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet weak var aboutMeLabel: UILabel!
    var aboutMe = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        aboutMeLabel.text = aboutMe
    }
    

}
