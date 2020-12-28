//
//  SideBarViewController.swift
//  SideMenuSwift Demo
//
//  Created by Adwait Barkale on 28/12/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit

class SideBarViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet var tableViewSideBar: UITableView!
    
    let arrTitle = [
        "Menu No.1",
        "Menu No.2",
        "Menu No.3",
        "Menu No.4",
        "Menu No.5",
        "Menu No.6"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    func configureTableView()
    {
        tableViewSideBar.dataSource = self
        tableViewSideBar.delegate = self
        tableViewSideBar.rowHeight = UITableView.automaticDimension
        tableViewSideBar.estimatedRowHeight = 70
        tableViewSideBar.backgroundColor = .clear
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewSideBar.dequeueReusableCell(withIdentifier: "SideBarViewCell", for: indexPath) as! SideBarViewCell
            let currentTitle = arrTitle[indexPath.row]
            cell.lblTitle.text = currentTitle
        cell.imageView?.image = UIImage(systemName: "person.fill")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableViewSideBar.deselectRow(at: indexPath, animated: true)
        print("Menu Selected \(indexPath.row + 1) Selected")
    }
    
}
