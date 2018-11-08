//
//  SignupPageViewController.swift
//  LoginHomework
//
//  Created by Kong Vungsovanreach on 11/8/18.
//  Copyright © 2018 Kong Vungsovanreach. All rights reserved.
//

import UIKit

class SignupPageViewController: UIViewController {
    @IBOutlet weak var usernameTextView: UITextField!
    @IBOutlet weak var passwordTextView: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
textViewConfig()
        // Do any additional setup after loading the view.
    }
    func textViewConfig() {
        usernameTextView.placeholder = "Input Your Username!"
        usernameTextView.frame.size.height = 60
        passwordTextView.placeholder = "Input Your Password!"
        passwordTextView.frame.size.height = 60
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
