//
//  LoginViewController.swift
//  Element
//
//  Created by Adolfo Lozada Serena on 02/07/21.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var mailView: UIView!
    @IBOutlet weak var passView: UIView!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mailView.layer.borderColor = UIColor.gray.cgColor
        mailView.layer.borderWidth = 1
        mailView.layer.cornerRadius = 8
        
        passView.layer.borderColor = UIColor.gray.cgColor
        passView.layer.borderWidth = 1
        passView.layer.cornerRadius = 8
        
        loginButton.layer.cornerRadius = 8
    }
    
    // MARK: - Actions

    @IBAction func tapAction(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func forgotPassAction() {
    }
    
    @IBAction func createAccountAction() {
    }
    
    @IBAction func loginAction() {
    }
    
    @IBAction func facebookAction() {
    }
    
    @IBAction func appleAction() {
    }
    
    @IBAction func googleAction() {
    }
    
}
