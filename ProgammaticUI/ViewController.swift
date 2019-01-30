//
//  ViewController.swift
//  ProgammaticUI
//
//  Created by Michael Miles on 1/29/19.
//  Copyright © 2019 Michael Miles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        
        view.backgroundColor = UIColor.white
    }
    
    let mainLabel : UILabel = {
        let label = UILabel()
        label.text = "We did it!"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let logoImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Step by Step Logo")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let ourButton : UIButton = {
        let button = UIButton()
        button.titleLabel?.text = "HEY, PUSH ME!"
        button.titleLabel?.textColor = UIColor.white
        button.backgroundColor = UIColor.blue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    func setupViews() {
        view.addSubview(mainLabel)
        view.addSubview(logoImageView)
        view.addSubview(ourButton)
    }

}

