//
//  HDPicTableViewCell.swift
//  HDImagePicker
//
//  Created by ddd on 17/8/7.
//  Copyright © 2017年 HuangDong. All rights reserved.
//

import UIKit

class HDPicTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var hdPicImageView: UIImageView!
    @IBOutlet weak var hdPicName: UILabel!
    @IBOutlet weak var hdPicSize: UILabel!
    
}
