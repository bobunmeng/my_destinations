//
//  MyDreamDetailCell.swift
//  MyDestinations
//
//  Created by Bo Bunmeng on 17/7/20.
//  Copyright © 2020 Bo Bunmeng. All rights reserved.
//

import UIKit

class MyDreamDetailCell: UITableViewCell {

    @IBOutlet weak var destImgView: UIImageView!
    @IBOutlet weak var destNameLabel: UILabel!
    @IBOutlet weak var destAddressLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func configure(with dest: Destination) {
        self.destImgView.image = dest.thumbnail ?? UIImage(named: "eiffel-tower")
        self.destNameLabel.text = dest.name
        self.destAddressLabel.text = dest.address
    }
    
}
