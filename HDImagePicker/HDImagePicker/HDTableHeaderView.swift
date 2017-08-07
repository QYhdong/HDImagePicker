//
//  HDTableHeaderView.swift
//  HDImagePicker
//
//  Created by ddd on 17/8/7.
//  Copyright © 2017年 HuangDong. All rights reserved.
//

import UIKit

class HDTableHeaderView: UIView {

    override func awakeFromNib() {
        
    }
    @IBOutlet weak var hdMaxPicNum: UITextField!
    @IBOutlet weak var hdIsShowAllPictures: UISwitch!
    @IBOutlet weak var hdOnlyPic: UISwitch!
    @IBOutlet weak var hdOnlyVideo: UISwitch!

}
