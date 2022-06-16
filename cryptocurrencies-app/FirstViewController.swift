//
//  FirstViewController.swift
//  cryptocurrencies-app
//
//  Created by Fyodor Vladimirov on 16.06.2022.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        var contentView:UIView = UIView()
        
        var background:UIImageView = UIImageView()
        
        var loginLabel:UILabel = UILabel()
        
        var loginTextField:UITextField = UITextField()
        
        var passwordLabel:UILabel = UILabel()
        
        var passwordTextField:UITextField = UITextField()
        
        var loginButton:UIButton = UIButton()
        
        
        func setUpContent() {
            self.view.addSubview(contentView)
            
            contentView.translatesAutoresizingMaskIntoConstraints = false
            
            contentView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
            contentView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
            contentView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
            contentView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
            //contentView.addSubview(passwordTextField)
            //contentView.addSubview(loginButton)
        }
        
        func setUpBackground() {
            contentView.addSubview(background)
            
            background.image = UIImage(named: "Background")
            
            background.translatesAutoresizingMaskIntoConstraints = false
            
            background.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
            background.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
            background.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
            background.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
            
        }
        
        func setUpLoginLabel() {
            contentView.addSubview(loginLabel)
            
            loginLabel.translatesAutoresizingMaskIntoConstraints = false
            
            loginLabel.text = "Login"
            loginLabel.font = UIFont(name: "AvenirNext-Regular", size: 30)
            
            loginLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
            loginLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: -100).isActive = true
            
        }
        
        func setUpLoginTextField() {
            contentView.addSubview(loginTextField)

            loginTextField.translatesAutoresizingMaskIntoConstraints = false
            
            loginTextField.placeholder = "Enter text here"
            loginTextField.font = UIFont(name: "AvenirNext-Regular", size: 30)
            loginTextField.borderStyle = UITextField.BorderStyle.roundedRect
            loginTextField.autocorrectionType = UITextAutocorrectionType.no
            loginTextField.keyboardType = UIKeyboardType.default
            loginTextField.returnKeyType = UIReturnKeyType.done
            loginTextField.clearButtonMode = UITextField.ViewMode.whileEditing
            loginTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
            loginTextField.delegate = self

            loginTextField.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 10).isActive = true
            loginTextField.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true

        }
        
        func setUpPasswordLabel() {
            contentView.addSubview(passwordLabel)
            
            passwordLabel.translatesAutoresizingMaskIntoConstraints = false
            
            passwordLabel.text = "Password"
            passwordLabel.font = UIFont(name: "AvenirNext-Regular", size: 30)
            
            passwordLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
            passwordLabel.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 10).isActive = true
        }
        
        func setUpPasswordTextField() {
            contentView.addSubview(passwordTextField)
            
            passwordTextField.translatesAutoresizingMaskIntoConstraints = false
            
            passwordTextField.placeholder = "Enter text here"
            passwordTextField.font = UIFont(name: "AvenirNext-Regular", size: 30)
            passwordTextField.borderStyle = UITextField.BorderStyle.roundedRect
            passwordTextField.autocorrectionType = UITextAutocorrectionType.no
            passwordTextField.keyboardType = UIKeyboardType.default
            passwordTextField.returnKeyType = UIReturnKeyType.done
            passwordTextField.clearButtonMode = UITextField.ViewMode.whileEditing
            passwordTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
            passwordTextField.delegate = self
            
            passwordTextField.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 10).isActive = true

            
            
        }
        
        setUpContent()
        setUpBackground()
        setUpLoginLabel()
        setUpLoginTextField()
        setUpPasswordLabel()
        setUpPasswordTextField()
        
    
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
