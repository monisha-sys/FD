//
//  HomeViewController.swift
//  CoverFlow
//
//  Created by Mounika Reddy on 11/02/21.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.backBarButtonItem = UIBarButtonItem(image: UIImage(named: "line.horizontal.3"), style: .plain, target: self, action: #selector(menuTapped))

    }
    
    @objc func menuTapped(){
        
        print("menu")
    }

}
