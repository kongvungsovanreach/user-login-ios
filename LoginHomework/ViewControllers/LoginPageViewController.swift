//
//  LoginPageViewController.swift
//  LoginHomework
//
//  Created by Kong Vungsovanreach on 11/8/18.
//  Copyright © 2018 Kong Vungsovanreach. All rights reserved.
//

import UIKit

class LoginPageViewController: UIViewController {
    var user : User?

  
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextFiled: UITextField!

    @IBAction func goBackButton(_ sender: Any) {
        self.performSegue(withIdentifier: "loginPageToMain", sender: self)
    }
    @IBAction func signupButtonTap(_ sender: Any) {
        self.performSegue(withIdentifier: "loginToSignup", sender: self)
    }

    @IBAction func loginButtonTap(_ sender: Any) {
        let username = usernameTextField.text!
        let password = passwordTextFiled.text!
        let users = UserSampleData.users
        var isUser : Bool = false
        var correctPassword = true
        if username.isEmpty || password.isEmpty {
            giveAlert(info: "Please input all fields!", bottomTitle: "OK",handler: false )
            return
        }
        for user in users {
            if user.username == username && user.password == password {
                isUser = true
                self.user = user
                break
            }else if user.username == username && user.password != password{
                correctPassword = false
                break
            }
        }
        if isUser {
            self.performSegue(withIdentifier: "loginPageToMain", sender: self)

        }else if !correctPassword {
            giveAlert(info: "Incorrect Password!", bottomTitle: "OK",handler: false )
        }else{
            giveAlert(info: "Login Failed!", bottomTitle: "OK",handler: false )
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "loginPageToMain" {
            let mainPage : ViewController = segue.destination as! ViewController
            mainPage.user = self.user
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
usernameTextField.frame.size.height = 60
passwordTextFiled.frame.size.height = 60
    }
    func buttonConfig() {
        loginButton.layer.cornerRadius = 7
        signupButton.layer.cornerRadius = 7
    }
    func giveAlert(info : String, bottomTitle : String, handler : Bool) {
        let alert = UIAlertController(title: info, message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: bottomTitle, style: .cancel, handler: handler ? {(alert) -> Void in self.dismiss(animated: true, completion: nil)
            }: {(alert) -> Void in print("No handler")}
        ))
        self.present(alert, animated: true)
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

