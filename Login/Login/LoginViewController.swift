//
//  LoginViewController.swift
//  login
//
//  Created by Oğulcan on 11/05/2018.
//  Copyright © 2018 ogulcan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveLoginTapped(_ sender: UIButton) {
        try! App.keychain?.set("token", key: "token")
        UIApplication.setRootView(MainViewController.instantiate(from: .Main))
    }
}
