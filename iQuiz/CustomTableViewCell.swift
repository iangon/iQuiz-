//
//  CustomTableViewCell.swift
//  iQuiz
//
//  Created by Ian on 11/8/16.
//  Copyright © 2016 Ian. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var bulletPoint: UIImageView!
    @IBOutlet weak var cellDescription: UILabel!
    @IBOutlet weak var cellSubject: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
