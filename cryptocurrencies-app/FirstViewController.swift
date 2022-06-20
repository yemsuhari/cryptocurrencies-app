//
//  FirstViewController.swift
//  cryptocurrencies-app
//
//  Created by Fyodor Vladimirov on 16.06.2022.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {
    
    // SecondViewController set up
    let secondViewController = SecondViewController()
    
    
    
    let login = "CryptoInvestor2012"
    let password = "123456789password"
    
    // UITextField that always point to the latest edited text field.
    var activeTextField: UITextField!
    
    var enteredLoginText = ""
    var enteredPasswordText = ""
    
    
    var contentView:UIView = UIView()
    
    var background:UIImageView = UIImageView()
    
    var loginLabel:UILabel = UILabel()
    
    var loginTextField:UITextField = UITextField()
    
    var passwordLabel:UILabel = UILabel()
    
    var passwordTextField:UITextField = UITextField()
    
    var loginButton:UIButton = UIButton(type: .custom)
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        func setUpContentView() {
            self.view.addSubview(contentView)
            
            contentView.translatesAutoresizingMaskIntoConstraints = false
            
            contentView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
            contentView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
            contentView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
            contentView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
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
            
            
            enteredLoginText = loginTextField.text ?? ""

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
        
        func setUpLoginButton() {
            contentView.addSubview(loginButton)
            
            loginButton.translatesAutoresizingMaskIntoConstraints = false
            
            loginButton.setTitle("Log In", for: .normal)
            loginButton.backgroundColor = UIColor.white
            loginButton.setTitleColor(UIColor.black, for: .normal)
            loginButton.titleLabel?.font =  UIFont(name: "AvenirNext-Regular", size: 25)
            loginButton.frame = CGRect(x: 160, y: 100, width: 50, height: 50)
            loginButton.layer.cornerRadius = 0.5 * loginButton.bounds.size.width
            loginButton.clipsToBounds = true
            
            loginButton.addTarget(self, action: #selector(logInButtonPressed), for: .touchUpInside)
            
            
            loginButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 10).isActive = true
        }
        
        setUpContentView()
        setUpBackground()
        setUpLoginLabel()
        setUpLoginTextField()
        setUpPasswordLabel()
        setUpPasswordTextField()
        setUpLoginButton()
        
    
    }
    
    // Actions
    
    // UIButton Delegate Methods
    @objc func logInButtonPressed() {
        print("log in button pressed")
        
        print(enteredLoginText)
        print(enteredPasswordText)
        
        self.present(secondViewController, animated: true)
        
        
    }
    
    
    // UITextField Delegate Methods
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        activeTextField = textField
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // called when 'return' key pressed. return NO to ignore.
        print("TextField should return method called")
        
        
        switch activeTextField {
            case loginTextField:
                textField.resignFirstResponder()
                enteredLoginText = textField.text ?? ""
            case passwordTextField:
                textField.resignFirstResponder()
                enteredPasswordText = textField.text ?? ""
            default:
                print("sos")
        }
        
        
        return true
    }

    

}
