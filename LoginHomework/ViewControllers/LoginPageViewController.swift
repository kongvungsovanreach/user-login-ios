//
//  LoginPageViewController.swift
//  LoginHomework
//
//  Created by Kong Vungsovanreach on 11/8/18.
//  Copyright © 2018 Kong Vungsovanreach. All rights reserved.
//

import UIKit

class LoginPageViewController: UIViewController {

    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextFiled: UITextField!

    @IBAction func signupButtonTap(_ sender: Any) {
        print(UserSampleData.users.count)
        self.performSegue(withIdentifier: "loginToSignup", sender: self)
    }

    @IBAction func loginButtonTap(_ sender: Any) {
        let username = usernameTextField.text!
        let password = passwordTextFiled.text!
        let users = UserSampleData.users
        for user in users {
            if user.username == username && user.password == password {
                print("login successfully")
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        textViewConfig()
        buttonConfig()
//        usernameTextView.scroll

        // Do any additional setup after loading the view.
    }
    func textViewConfig() {
        usernameTextField.placeholder = "Input Your Username!"
        usernameTextField.frame.size.height = 60
        passwordTextFiled.placeholder = "Input Your Password!"
        passwordTextFiled.frame.size.height = 60
    }
    func buttonConfig() {
        loginButton.layer.cornerRadius = 7
        signupButton.layer.cornerRadius = 7
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
