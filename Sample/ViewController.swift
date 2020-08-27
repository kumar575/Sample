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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(plusPhotoButton)
        plusPhotoButton.heightAnchor.constraint(equalToConstant: 140).isActive = true
        plusPhotoButton.widthAnchor.constraint(equalToConstant: 140).isActive = true
        plusPhotoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        plusPhotoButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        
    }


}

