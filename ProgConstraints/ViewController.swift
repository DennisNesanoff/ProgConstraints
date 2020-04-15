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
        _blueView.backgroundColor = UIColor.red
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
        constraints.append(redView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0))
        constraints.append(redView.heightAnchor.constraint(equalToConstant: 120))
    }

}

