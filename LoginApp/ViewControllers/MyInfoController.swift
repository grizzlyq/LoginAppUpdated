//
//  myInfoController.swift
//  LoginApp
//
//  Created by Дмитрий on 10.11.2022.
//

import UIKit

class MyInfoController: LoginViewController {
    
   
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var infoAboutMe: UITextView!
    
    private let aboutMe = User.getUserInfo()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: "itsMe")
        
        infoAboutMe.text = aboutMe.shortStory
        infoAboutMe.backgroundColor = .systemYellow
        infoAboutMe.textColor = .purple
    }
    
}


// cringe zone aka 4 123

