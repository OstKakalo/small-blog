//
//  BaseViewController.swift
//  SmallBlog
//
//  Created by 胡梦龙 on 2017/5/4.
//  Copyright © 2017年 胡梦龙. All rights reserved.
//

import UIKit

class BaseViewController: UITableViewController {

    lazy var visitorView : VisitorView = VisitorView.visitorView()
    var isLogin : Bool = false
    override func loadView() {
        isLogin ? super.loadView() : setupVisitorView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension BaseViewController {
    func setupVisitorView() {
        visitorView.backgroundColor = UIColor.purple
        view = visitorView
    }
}
