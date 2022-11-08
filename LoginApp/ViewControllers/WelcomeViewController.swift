//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Дмитрий on 04.11.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var greetingToUser: UILabel!
    
    var greetingToSomeone = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        greetingToUser.text = ("Welcome, \(greetingToSomeone)!")
    }
   
    
}
