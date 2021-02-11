//
//  SignInViewController.swift
//  CoverFlow
//
//  Created by Mounika Reddy on 11/02/21.
//

import UIKit

class SignInViewController: UIViewController {
    
    
    @IBOutlet weak var emailOrPhoneTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signInWithApple: UIButton!
    @IBOutlet weak var facebookLogin: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailOrPhoneTF.layer.cornerRadius = 10.5
        passwordTF.layer.cornerRadius = 10.5
        
        loginButton.layer.cornerRadius = 20
        facebookLogin.layer.cornerRadius=20
        signInWithApple.layer.cornerRadius = 20

    }
    
    @IBAction func tappedOnLogin(_ sender: Any) {
        
        if sender as! NSObject == loginButton {
            let vc = storyboard?.instantiateViewController(identifier: "DisplaySliderViewController") as? DisplaySliderViewController
            navigationController?.pushViewController(vc!, animated: true)
            
        }
        
    }
    
    
    @IBAction func tappedOnfacebook(_ sender: Any) {
        
//        let vc = HomeViewController()
//        vc.modalPresentationStyle = .fullScreen
//        present(vc, animated: true, completion: nil)
        
        if sender as! NSObject == facebookLogin {
            let vc = storyboard?.instantiateViewController(identifier: "HomeViewController") as? HomeViewController
        navigationController?.pushViewController(vc!, animated: true)

        }

        
        
    }
    
    
    


}
