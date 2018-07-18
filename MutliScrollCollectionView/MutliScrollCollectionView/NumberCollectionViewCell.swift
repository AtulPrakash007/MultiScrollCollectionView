//
//  NumberCollectionViewCell.swift
//  Collection View Demo
//
//  Created by ZA-LTP44 on 7/18/18.
//  Copyright © 2018 Atul Prakash. All rights reserved.
//

import UIKit

@IBDesignable
class NumberCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var numberlabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        setup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    func setup() {
       
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor.gray.cgColor
        self.layer.cornerRadius = self.frame.size.width/2
        
        //Shadow
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 5)
        self.layer.shadowOpacity = 0.7
        self.layer.shadowRadius = 4.0
        self.layer.masksToBounds = false
    }
    
}
