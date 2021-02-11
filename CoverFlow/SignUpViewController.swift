//
//  SignUpViewController.swift
//  CoverFlow
//
//  Created by Mounika Reddy on 11/02/21.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var fullNameTF: UITextField!
    @IBOutlet weak var phoneTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fullNameTF.layer.cornerRadius = 20
        passwordTF.layer.cornerRadius = 20
        emailTF.layer.cornerRadius = 20
        phoneTF.layer.cornerRadius = 20
        signUpButton.layer.cornerRadius = 20
        
    }
    
    @IBAction func tappedOnSignUp(_ sender: Any) {
       
        
        
    }
    

}
