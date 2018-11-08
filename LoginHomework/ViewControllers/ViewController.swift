//
//  ViewController.swift
//  LoginHomework
//
//  Created by Kong Vungsovanreach on 11/8/18.
//  Copyright © 2018 Kong Vungsovanreach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBAction func loginButtonTap(_ sender: Any) {
        self.performSegue(withIdentifier: "mainToLoginPage", sender: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        styleButton()


    }

    func styleButton()  {
        loginButton.frame = CGRect(x: 125, y: 500, width: 170, height: 170)
        loginButton.layer.cornerRadius = 0.5 * loginButton.bounds.size.width
        loginButton.clipsToBounds = true
    }
}

