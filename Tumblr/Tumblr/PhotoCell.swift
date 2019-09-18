//
//  PhotoCell.swift
//  Tumblr
//
//  Created by Elizabeth Hernandez on 9/17/19.
//  Copyright © 2019 Elizabeth Hernandez. All rights reserved.
//

import UIKit

class PhotoCell: UITableViewCell {

    @IBOutlet weak var photo: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
