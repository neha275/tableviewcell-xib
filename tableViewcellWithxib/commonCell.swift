//
//  commonCell.swift
//  tableViewcellWithxib
//
//  Created by Neha Gupta on 13/02/18.
//  Copyright © 2018 Neha Gupta. All rights reserved.
//

import UIKit

class commonCell: UITableViewCell {

    
    @IBOutlet weak var uvBackground:UIView!
    @IBOutlet weak var label:UILabel!
    @IBOutlet weak var imageLogo: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
