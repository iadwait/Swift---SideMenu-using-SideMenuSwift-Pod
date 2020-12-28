//
//  SideBarViewCell.swift
//  SideMenuSwift Demo
//
//  Created by Adwait Barkale on 28/12/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit

class SideBarViewCell: UITableViewCell {

    @IBOutlet var imgView: UIImageView!
    @IBOutlet var lblTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
