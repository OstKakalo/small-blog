//
//  UIButton_Extension.swift
//  SmallBlog
//
//  Created by 胡梦龙 on 2017/5/4.
//  Copyright © 2017年 胡梦龙. All rights reserved.
//

import UIKit

extension UIButton {

    convenience init(img : String, backImg : String) {
        self.init()
        setBackgroundImage(UIImage(named: backImg), for: .normal)
        setBackgroundImage(UIImage(named: backImg + "_high"), for: .highlighted)
        setImage(UIImage(named: img), for: .normal)
        setImage(UIImage(named: img + "_high"), for: .highlighted)
        sizeToFit()
    }
}

