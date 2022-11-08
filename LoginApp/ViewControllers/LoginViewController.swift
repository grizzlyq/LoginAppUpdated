//
//  ViewController.swift
//  LoginApp
//
//  Created by Дмитрий on 04.11.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    

    private let userInfo = User.getUserInfo()

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        for viewController in viewControllers {
            if let firstVC = viewController as? WelcomeViewController {
                firstVC.greetingToSomeone = userInfo.username
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
        }
    
    @IBAction func loginButtonAction() {
        guard loginTextField.text == userInfo.username && passwordTextField.text == userInfo.password else {
         showAlert(
            withTitle: "Sorry!",
            andMessage: "Wrong Username or Password",
            textField: passwordTextField
         )
            return
        }
        performSegue(withIdentifier: "openWelcomeVC", sender: nil)
    }
 
    @IBAction func unwind(for segue: UIStoryboardSegue) {
            loginTextField?.text = ""
            passwordTextField?.text = ""
    }
   
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Oops!", andMessage: "Your name is \(userInfo.username)")
        : showAlert(withTitle: "Oops!", andMessage: "Your password is \(userInfo.password)")
    }
    
}


// MARK: UIAlertController

// alerts
extension LoginViewController {
    private func showAlert(withTitle title: String, andMessage message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


