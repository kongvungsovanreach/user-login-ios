//
//  ViewController.swift
//  LoginHomework
//
//  Created by Kong Vungsovanreach on 11/8/18.
//  Copyright © 2018 Kong Vungsovanreach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var user : User!
    var isLogin = false
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    @IBAction func loginButtonTap(_ sender: Any) {
        if isLogin {
            user = nil
            viewDidLoad()
        }else{
            self.performSegue(withIdentifier: "mainToLoginPage", sender: self)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        styleButton()
        if user == nil {
            loginButton.setTitle("LOGIN", for: UIControl.State.normal)
            welcomeLabel.isHidden = true
            loginButton.backgroundColor = UIColor.orange
            isLogin = false
        }else{
            welcomeLabel.text = "Welcome \(user.username)"
            loginButton.setTitle("LOGOUT", for: UIControl.State.normal)
            loginButton.backgroundColor = UIColor.green
            isLogin = true
        }

    }

    func styleButton()  {
        loginButton.frame = CGRect(x: 125, y: 500, width: 170, height: 170)
        loginButton.layer.cornerRadius = 0.5 * loginButton.bounds.size.width
        loginButton.clipsToBounds = true
    
    }
}

