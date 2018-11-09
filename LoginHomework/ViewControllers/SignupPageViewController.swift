//
//  SignupPageViewController.swift
//  LoginHomework
//
//  Created by Kong Vungsovanreach on 11/8/18.
//  Copyright © 2018 Kong Vungsovanreach. All rights reserved.
//

import UIKit

class SignupPageViewController: UIViewController {

    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBAction func goBackButtonTap(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func signupButtonTap(_ sender: Any) {
        let username = usernameTextField.text!
        let password = passwordTextField.text!
        let confirmPassword = confirmPasswordTextField.text!
        if username.isEmpty || password.isEmpty || confirmPassword.isEmpty {
            giveAlert(info: "Please input all fields!", bottomTitle: "OK, I got it.", handler: false)
        }else if !confirmPasswordCheck() {
            giveAlert(info: "Confirm password is not match!", bottomTitle: "I'll check it again.", handler: false)
        }else{
            var  newUser = User(username: usernameTextField.text!, password: passwordTextField.text!)
            UserSampleData.users.append(newUser)
            giveAlert(info: "Signup successfully!", bottomTitle: "Login Now!", handler: true)

        }




//
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        textViewConfig()
        buttonConfig()
        // Do any additional setup after loading the view.
    }
    func giveAlert(info : String, bottomTitle : String, handler : Bool) {
        let alert = UIAlertController(title: info, message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: bottomTitle, style: .cancel, handler: handler ? {(alert) -> Void in self.dismiss(animated: true, completion: nil)
            }: {(alert) -> Void in print("No handler")}
        ))
        self.present(alert, animated: true)
    }

    func confirmPasswordCheck() -> Bool {
        return passwordTextField.text! == confirmPasswordTextField.text ? true : false
    }


    func textViewConfig() {
        usernameTextField.frame.size.height = 60
        passwordTextField.frame.size.height = 60
        confirmPasswordTextField.frame.size.height = 60
    }
    func buttonConfig() {
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
extension UITextField{
    @IBInspectable var placeHolderColor: UIColor? {
        get {
            return self.placeHolderColor
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSAttributedString.Key.foregroundColor: newValue!])
        }
    }
}
