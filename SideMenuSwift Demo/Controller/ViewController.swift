//
//  ViewController.swift
//  SideMenuSwift Demo
//
//  Created by Adwait Barkale on 28/12/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit
import SideMenuSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupSideMenu()
    }
    
    func setupSideMenu()
    {
        SideMenuController.preferences.basic.menuWidth = 265
    }

    @IBAction func btnMenuTapped(_ sender: UIBarButtonItem) {
        self.sideMenuController?.revealMenu()
    }
    
    @IBAction func btnGoToSecondVCTapped(_ sender: UIButton) {
        let nextVC = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
}

