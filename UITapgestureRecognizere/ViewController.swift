//
//  ViewController.swift
//  UITapgestureRecognizere
//
//  Created by Admin on 7/31/21.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "TapGesture"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 21)
        titleLabel.textAlignment = .center
        titleLabel.textColor = .white
        titleLabel.backgroundColor = .darkGray
        titleLabel.layer.cornerRadius = 27.5
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()
    
    var tab = UITapGestureRecognizer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(titleLabel)
        setConstraints()
        outSide()
    }
    
    func outSide() {
        tab = UITapGestureRecognizer(target: self, action: #selector(availabelBalance))
        tab.numberOfTapsRequired = 1
        tab.cancelsTouchesInView = false
        view.addGestureRecognizer(tab)
    }
    
    @objc func availabelBalance(_ sender:UITapGestureRecognizer) {

        if tab.cancelsTouchesInView {
            titleLabel.isHidden = true
            tab.cancelsTouchesInView = false
        } else {
            titleLabel.isHidden = false
            tab.cancelsTouchesInView = true
        }
    }

    func setConstraints() {
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 55),
            titleLabel.widthAnchor.constraint(equalToConstant: 320)
        ])
    }

}

