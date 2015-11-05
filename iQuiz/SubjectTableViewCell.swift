//
//  SubjectTableViewCell.swift
//  iQuiz
//
//  Created by Teddy Pappas on 10/30/15.
//  Copyright © 2015 Teddy Pappas. All rights reserved.
//

import UIKit

class SubjectTableViewCell: UITableViewCell {

    //MARK: Properties
    @IBOutlet weak var subjectLabel: UILabel!
    @IBOutlet weak var subjectImage: UIImageView!
    @IBOutlet weak var subjectDescription: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
