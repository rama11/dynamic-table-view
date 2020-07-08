//
//  TableViewCell.swift
//  tableview
//
//  Created by Sinergy on 7/8/20.
//  Copyright © 2020 Sinergy. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet var myImageView: UIImageView!
    @IBOutlet var myTextLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
