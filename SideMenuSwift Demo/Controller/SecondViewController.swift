//
//  SecondViewController.swift
//  SideMenuSwift Demo
//
//  Created by Adwait Barkale on 28/12/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit
import SideMenuSwift

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSideMenu()
    }

    func setupSideMenu()
    {
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Menu", style: .plain, target: self, action: #selector(btnSideMenuTapped))
        
        let leftToRightGesture = UISwipeGestureRecognizer(target: self, action: #selector(btnSideMenuTapped))
        leftToRightGesture.direction = .right
        self.view.addGestureRecognizer(leftToRightGesture)
    }
    
    @objc func btnSideMenuTapped()
    {
        self.sideMenuController?.revealMenu()
    }
    
    @IBAction func btnGoBackTapped(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}
