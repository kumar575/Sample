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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(plusPhotoButton)
        plusPhotoButton.heightAnchor.constraint(equalToConstant: 140).isActive = true
        plusPhotoButton.widthAnchor.constraint(equalToConstant: 140).isActive = true
        plusPhotoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        plusPhotoButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        
        
        view.addSubview(emailTextField)
        emailTextField.topAnchor.constraint(equalTo: plusPhotoButton.bottomAnchor , constant:  20).isActive = true
        emailTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        emailTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 40).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }


}

