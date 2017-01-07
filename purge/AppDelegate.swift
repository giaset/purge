//
//  AppDelegate.swift
//  purge
//
//  Created by Gianni Settino on 2017-01-06.
//  Copyright © 2017 Milton and Parc. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var loginViewController: LoginViewController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        if let _ = UserDefaults.standard.string(forKey: "token") {
            window?.rootViewController = FeedViewController()
        } else {
            loginViewController = LoginViewController()
            window?.rootViewController = loginViewController
        }
        
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        if url.scheme == "miltonandparc" && url.host == "authorize", let token = url.query?.components(separatedBy: "=").last {
            UserDefaults.standard.set(token, forKey: "token")
            UserDefaults.standard.synchronize()
            window?.rootViewController = FeedViewController()
            loginViewController = nil
            return true
        }
        
        return false
    }
}
