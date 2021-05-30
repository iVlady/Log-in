//
//  InterestsViewController.swift
//  Log in
//
//  Created by Vlad Vinogrotskiy on 30.05.2021.
//

import UIKit

class InterestsViewController: UIViewController {
    
    @IBOutlet weak var hobbiesLabel: UILabel!
    var hobbies = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        hobbiesLabel.text = hobbies
    }
    


}
