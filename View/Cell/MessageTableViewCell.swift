//
//  MessageTableViewCell.swift
//  MessageMe
//
//  Created by Radek on 18/10/2019.
//  Copyright © 2019 Radek. All rights reserved.
//

import UIKit

class MessageTableViewCell: UITableViewCell {

    
    // Ottlets
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblText: UILabel!
    @IBOutlet weak var lblTime: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
}
