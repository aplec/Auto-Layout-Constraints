//
//  ViewController.swift
//  Auto Layout Constraints
//
//  Created by Ante Plecas on 2/14/20.
//  Copyright © 2020 Ante Plecas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var imageView1 = UIImageView()
    var imageView2 = UIImageView()

    var leadingConstraint: NSLayoutConstraint?
    var trailingConstraint: NSLayoutConstraint?
    var topConstraint: NSLayoutConstraint?
    var bottomConstraint: NSLayoutConstraint?
    
    var leadingConstraint1: NSLayoutConstraint?
    var trailingConstraint1: NSLayoutConstraint?
    var topConstraint1: NSLayoutConstraint?

    override func viewDidLoad() {
        super.viewDidLoad()

        imageView1.image = UIImage(named: "larry david.jpg")
        imageView2.image = UIImage(named: "larry david 1.jpg")

        view.addSubview(imageView1)
        view.addSubview(imageView2)
        imageView1.contentMode = .scaleAspectFit
        imageView2.contentMode = .scaleAspectFit
        view.addSubview(imageView1)
        view.addSubview(imageView2)

        imageView1.translatesAutoresizingMaskIntoConstraints = false
        imageView2.translatesAutoresizingMaskIntoConstraints = false

        leadingConstraint = NSLayoutConstraint(item: imageView1, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 20.0)

        trailingConstraint = NSLayoutConstraint(item: imageView1, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: -20.0)

        topConstraint = NSLayoutConstraint(item: imageView1, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 50.0)

        bottomConstraint = NSLayoutConstraint(item: imageView1, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: 0)
        
        leadingConstraint1 = NSLayoutConstraint(item: imageView2, attribute: .leading, relatedBy: .equal, toItem: imageView1, attribute: .leading, multiplier: 1.0, constant: 20.0)

        trailingConstraint1 = NSLayoutConstraint(item: imageView2, attribute: .trailing, relatedBy: .equal, toItem: imageView1, attribute: .trailing, multiplier: 1.0, constant: -20.0)

        topConstraint1 = NSLayoutConstraint(item: imageView2, attribute: .top, relatedBy: .equal, toItem: imageView1, attribute: .top, multiplier: 1.0, constant: -100)

        leadingConstraint?.isActive = true
        trailingConstraint?.isActive = true
        topConstraint?.isActive = true
        bottomConstraint?.isActive = true
        
        leadingConstraint1?.isActive = true
        trailingConstraint1?.isActive = true
        topConstraint1?.isActive = true

    }


}

