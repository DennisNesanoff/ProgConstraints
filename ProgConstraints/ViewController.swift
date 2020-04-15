//
//  ViewController.swift
//  ProgConstraints
//
//  Created by Dennis Nesanoff on 15.04.2020.
//  Copyright © 2020 Dennis Nesanoff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var redView: UIView = {
        let _redView = UIView()
        _redView.backgroundColor = UIColor.red
        _redView.translatesAutoresizingMaskIntoConstraints = false
        return _redView
    }()

    lazy var blueView: UIView = {
        let _blueView = UIView()
        _blueView.backgroundColor = UIColor.blue
        _blueView.translatesAutoresizingMaskIntoConstraints = false
        return _blueView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    func setupView() {
        view.addSubview(redView)
        view.addSubview(blueView)
        
        var constraints: [NSLayoutConstraint] = [NSLayoutConstraint]()
        constraints.append(redView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0))
        constraints.append(redView.heightAnchor.constraint(equalToConstant: 120))
        constraints.append(redView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0))
        constraints.append(redView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0))
        
        constraints.append(NSLayoutConstraint(item: blueView, attribute: .top, relatedBy: .equal, toItem: redView, attribute: .bottom, multiplier: 1.0, constant: 20))
        constraints.append(NSLayoutConstraint(item: blueView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 0))
        constraints.append(NSLayoutConstraint(item: blueView, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: 0))
        constraints.append(NSLayoutConstraint(item: blueView, attribute: .height, relatedBy: .equal, toItem: redView, attribute: .height, multiplier: 1.0, constant: 0))
        
        NSLayoutConstraint.activate(constraints)
    }

}

