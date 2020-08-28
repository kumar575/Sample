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
       // tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 14)
        return tf
    }()
    
    let userNameTextField : UITextField = {
        let tf = UITextField()
        tf.placeholder = "UserName"
   //     tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 14)
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
        return button
    }()
    
    let passWordTextField : UITextField = {
        let tf = UITextField()
        tf.placeholder = "Password"
      //  tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 14)
        return tf
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(plusPhotoButton)
//        plusPhotoButton.heightAnchor.constraint(equalToConstant: 140).isActive = true
//        plusPhotoButton.widthAnchor.constraint(equalToConstant: 140).isActive = true
//        plusPhotoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        plusPhotoButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        
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
    
//    stackView.topAnchor.constraint(equalTo: plusPhotoButton.bottomAnchor , constant:  20).isActive = true
    //stackView.anchor(top: plusPhotoButton.bottomAnchor, paddingTop: 20)
//    stackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
//    stackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
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
