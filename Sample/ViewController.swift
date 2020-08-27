//
//  ViewController.swift
//  Sample
//
//  Created by VEENA on 27/08/20.
//  Copyright © 2020 VEENA. All rights reserved.
//

import UIKit

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
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 14)
        return tf
    }()
    
    let userNameTextField : UITextField = {
        let tf = UITextField()
        tf.placeholder = "UserName"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 14)
        return tf
    }()
    
    let signUpButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign Up", for: .normal)
        button.backgroundColor = UIColor(red: 149/255, green: 204/255, blue: 244/255, alpha: 1)
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    let passWordTextField : UITextField = {
        let tf = UITextField()
        tf.placeholder = "Password"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 14)
        return tf
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(plusPhotoButton)
        plusPhotoButton.heightAnchor.constraint(equalToConstant: 140).isActive = true
        plusPhotoButton.widthAnchor.constraint(equalToConstant: 140).isActive = true
        plusPhotoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        plusPhotoButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        
        setUpInputFields()
      
    }
    
  fileprivate  func setUpInputFields() {
    let greenView = UIView()
    greenView.backgroundColor = .green
    
    let redView = UIView()
    redView.backgroundColor = .red
    
    let stackView = UIStackView(arrangedSubviews: [emailTextField, userNameTextField,passWordTextField, signUpButton])
    
    stackView.translatesAutoresizingMaskIntoConstraints = false
    stackView.distribution = .fillEqually
    stackView.axis = .vertical
    stackView.spacing = 10
    view.addSubview(stackView)
    
    stackView.topAnchor.constraint(equalTo: plusPhotoButton.bottomAnchor , constant:  20).isActive = true
    stackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
    stackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
    stackView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    
    }


}

