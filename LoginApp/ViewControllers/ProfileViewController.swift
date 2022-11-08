//
//  infoAboutMeController.swift
//  LoginApp
//
//  Created by Дмитрий on 09.11.2022.
//

import UIKit

class ProfileViewController: LoginViewController {
   
    
    @IBOutlet weak var firstName: UILabel!
    @IBOutlet weak var secondName: UILabel!
    @IBOutlet weak var companyName: UILabel!
    @IBOutlet weak var groupName: UILabel!
    @IBOutlet weak var positionInCompany: UILabel!
    @IBOutlet weak var myAge: UILabel!
    
    private let personInfo = User.getUserInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeColorAndStyle()
        changeLabelInfo()
        
        
    }
    
    func changeColorAndStyle() {
        firstName.textColor = .purple
        secondName.textColor = .purple
        companyName.textColor = .purple
        groupName.textColor = .purple
        positionInCompany.textColor = .purple
        myAge.textColor = .purple
    }
   
    func changeLabelInfo() {
        firstName.text = ("FirstName: \(personInfo.person.firstName)")
        secondName.text = ("SecondName: \(personInfo.person.secondName)")
        companyName.text = ("Company: \(personInfo.person.company)")
        groupName.text = ("Group: \(personInfo.person.group)")
        positionInCompany.text = ("Position: \(personInfo.person.position)")
        myAge.text = ("myAge: \(personInfo.person.age)")
    }
}
