//
//  PostCell.swift
//  Chatter
//
//  Created by iD Student on 6/24/15.
//  Copyright (c) 2015 iD Tech. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var userName : UILabel!
    @IBOutlet weak var date     : UILabel!
    @IBOutlet weak var postText : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
