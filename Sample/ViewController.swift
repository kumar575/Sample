//
//  ViewController.swift
//  Sample
//
//  Created by VEENA on 27/08/20.
//  Copyright © 2020 VEENA. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    let plusPhotoButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        let imageName = UIImage(named: "plusphotoButton")
        button.setImage(imageName, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let emailTextField : UITextField = {
        let tf = UITextField()
        tf.placeholder = "Email"
       // tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.addTarget(self, action: #selector(handleTextInputChanged), for: .editingChanged)
        return tf
    }()
    
   @objc func handleTextInputChanged() {
    let isFormValid = emailTextField.text?.count ?? 0 > 0 && userNameTextField.text?.count ?? 0 > 0 && passWordTextField.text?.count ?? 0 > 0
    if isFormValid {
        signUpButton.isEnabled = true
        signUpButton.backgroundColor = .green
    }else {
        signUpButton.isEnabled = false 
        signUpButton.backgroundColor = .blue
    }
    
    }
    
    let userNameTextField : UITextField = {
        let tf = UITextField()
        tf.placeholder = "UserName"
   //     tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.addTarget(self, action: #selector(handleTextInputChanged), for: .editingChanged)
        return tf
    }()
    
    let signUpButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign Up", for: .normal)
       // button.backgroundColor = UIColor.rgb(red: 149, green: 204, blue: 244, alpha: 1)
        button.backgroundColor = UIColor.red
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(handleSignUp), for: .touchUpInside)
        button.isEnabled  = false
        return button
    }()
    
    @objc func handleSignUp() {
        //print("123")
        
        guard let email = emailTextField.text, email.count > 0 else {
            return
        }
        
        guard let username = userNameTextField.text, username.count > 0 else {
            return
        }
        
        guard let password = passWordTextField.text, password.count > 0 else {
            return
        }
        

        
        let auth = Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
            if let err = error {
                print("Failed to create user: ", err)
                return
            }
            print("Successfully created user", authResult?.additionalUserInfo?.providerID)
        }
            
        
    }
    
    
    let passWordTextField : UITextField = {
        let tf = UITextField()
        tf.placeholder = "Password"
      //  tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.addTarget(self, action: #selector(handleTextInputChanged), for: .editingChanged)
        return tf
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(plusPhotoButton)

        
        plusPhotoButton.anchor(top: view.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 40, paddingLeft: 0, paddingRight: 0, paddingbottom: 0, width: 140, height: 140)
        plusPhotoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true   

        setUpInputFields()
      
    }
    
  fileprivate  func setUpInputFields() {
    let greenView = UIView()
    greenView.backgroundColor = .green
    
    let redView = UIView()
    redView.backgroundColor = .red
    
    let stackView = UIStackView(arrangedSubviews: [emailTextField, userNameTextField,passWordTextField, signUpButton])
    
  //  stackView.translatesAutoresizingMaskIntoConstraints = false
    stackView.distribution = .fillEqually
    stackView.axis = .vertical
    stackView.spacing = 10
    view.addSubview(stackView)

    stackView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    
    
    stackView.anchor(top: plusPhotoButton.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 20, paddingLeft: 40, paddingRight: -40, paddingbottom: 0, width: 0, height: 200)
    }



}


extension UIView {
    func anchor(top: NSLayoutYAxisAnchor?,left: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, right: NSLayoutXAxisAnchor?, paddingTop: CGFloat, paddingLeft: CGFloat, paddingRight: CGFloat, paddingbottom: CGFloat,width: CGFloat, height: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let bottom = bottom {
            bottom.constraint(equalTo: bottom, constant: paddingbottom).isActive = true
        }
        
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        
        if let right = right {
            rightAnchor.constraint(equalTo: right, constant: paddingRight).isActive = true
        }
        
        if width != 0 {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if height != 0 {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
        
    }
}
