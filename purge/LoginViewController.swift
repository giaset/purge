//
//  LoginViewController.swift
//  purge
//
//  Created by Gianni Settino on 2017-01-06.
//  Copyright © 2017 Milton and Parc. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    let loginButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        loginButton.setTitle("LOGIN WITH INSTAGRAM", for: .normal)
        loginButton.setTitleColor(.black, for: .normal)
        view.addSubviewForAutolayout(loginButton)
        loginButton.centerXAnchor.activateConstraint(equalTo: view.centerXAnchor)
        loginButton.centerYAnchor.activateConstraint(equalTo: view.centerYAnchor)
    }
}
