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
        button.setTitle("Hey, PUSH ME!", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor.blue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    func setupViews() {
        view.addSubview(mainLabel)
        view.addSubview(logoImageView)
        view.addSubview(ourButton)
        
        //image constraints
        centerHorizontally(item: logoImageView)
        view.addConstraint(NSLayoutConstraint(item: logoImageView, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0))
        view.addConstraint(NSLayoutConstraint(item: logoImageView, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0, constant: 200))
        view.addConstraint(NSLayoutConstraint(item: logoImageView, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0, constant: 200))
        
        //mainLabel constraints
        view.addConstraint(NSLayoutConstraint(item: mainLabel, attribute: .bottom, relatedBy: .equal, toItem: logoImageView, attribute: .top, multiplier: 1, constant: -20))
        centerHorizontally(item: mainLabel)
        
        //button constraints
        view.addConstraint(NSLayoutConstraint(item: ourButton, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0, constant: 50))
        view.addConstraint(NSLayoutConstraint(item: ourButton, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0, constant: 300))
        view.addConstraint(NSLayoutConstraint(item: ourButton, attribute: .top, relatedBy: .equal, toItem: logoImageView, attribute: .bottom, multiplier: 1, constant: 20))
        centerHorizontally(item: ourButton)
    }
    
    func centerHorizontally(item: Any) {
        view.addConstraint(NSLayoutConstraint(item: item, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0))
    }

}

