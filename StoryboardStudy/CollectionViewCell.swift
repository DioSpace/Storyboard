//
//  CollectionViewCell.swift
//  StoryboardStudy
//
//  Created by hello on 2019/3/14.
//  Copyright © 2019 Dio. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var myLabel: UILabel!
    var value:String?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if let text = value {
            myLabel.text = text
        }
    }
}
