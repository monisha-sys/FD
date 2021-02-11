//
//  ViewController.swift
//  CoverFlow
//
//  Created by Mounika Reddy on 11/02/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loginButton.layer.cornerRadius = 20.0
        signUpButton.layer.cornerRadius = 20.0
        
        loginButton.layer.borderWidth = 1.0
        signUpButton.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1);
        signUpButton.layer.borderWidth = 1.0
    }

    @IBAction func tappedOnLoginSignUpButton(_ sender: Any) {
        
        if sender as! NSObject == loginButton{
            let move = storyboard?.instantiateViewController(identifier: "SignInViewController") as? SignInViewController
            navigationItem.backButtonTitle = ""
            self.navigationController?.pushViewController(move!, animated: true)

        }else if sender as! NSObject  == signUpButton {
            
            print(sender)
            let move = storyboard?.instantiateViewController(identifier: "SignUpViewController") as? SignUpViewController
            navigationItem.backButtonTitle = ""
            self.navigationController?.pushViewController(move!, animated: true)

        }
        
        
        
    }
    
}

