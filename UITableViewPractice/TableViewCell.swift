//
//  TableViewCell.swift
//  UITableViewPractice
//
//  Created by keisei_1092 on 2017/1/30.
//  Copyright © 2017年 keisei_1092. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

	@IBOutlet weak var label: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
