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
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(plusPhotoButton)
        plusPhotoButton.frame = CGRect(x: 0, y: 0, width: 140, height: 140)
        plusPhotoButton.center = view.center
    }


}

