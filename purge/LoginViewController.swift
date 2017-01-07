//
//  LoginViewController.swift
//  purge
//
//  Created by Gianni Settino on 2017-01-06.
//  Copyright © 2017 Milton and Parc. All rights reserved.
//

import SafariServices
import UIKit

class LoginViewController: UIViewController {
    
    let loginButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        loginButton.setTitle("LOGIN WITH INSTAGRAM", for: .normal)
        loginButton.setTitleColor(.black, for: .normal)
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        view.addSubviewForAutolayout(loginButton)
        loginButton.centerXAnchor.activateConstraint(equalTo: view.centerXAnchor)
        loginButton.centerYAnchor.activateConstraint(equalTo: view.centerYAnchor)
    }
    
    func loginButtonTapped() {
        let clientId = "02123bc881bb489c9ab2a2396fe15e4a"
        let redirectUri = "http://www.miltonandparc.com"
        let urlString = "https://api.instagram.com/oauth/authorize/?client_id=\(clientId)&redirect_uri=\(redirectUri)&response_type=code"
        guard let url = URL(string: urlString) else { return }
        let safariVc = SFSafariViewController(url: url)
        present(safariVc, animated: true)
    }
}
