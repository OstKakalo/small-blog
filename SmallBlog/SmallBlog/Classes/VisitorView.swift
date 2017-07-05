//
//  VisitorView.swift
//  SmallBlog
//
//  Created by 胡梦龙 on 2017/5/4.
//  Copyright © 2017年 胡梦龙. All rights reserved.
//

import UIKit

class VisitorView: UIView {
    class func visitorView() -> VisitorView{
        return Bundle.main.loadNibNamed("VisitorView", owner: nil, options: nil)?.last as! VisitorView
    }
}
