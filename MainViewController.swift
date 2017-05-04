//
//  MainViewController.swift
//  SmallBlog
//
//  Created by 胡梦龙 on 2017/4/20.
//  Copyright © 2017年 胡梦龙. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    private lazy var imageNames = ["tabbar_home_high", "tabbar_message_high", "", "tabbar_discover_high", "tabbar_profile_high"]
    lazy var composeBtn : UIButton = UIButton(img: "tabbar_compose", backImg: "tabbar_back")
    override func viewDidLoad() {
        super.viewDidLoad()
        setComposeBtn()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        for i in 0..<tabBar.items!.count {
            let item = tabBar.items![i]
            if i == 2 {
                item.isEnabled = false
                continue
            }
            item.selectedImage = UIImage(named: imageNames[i])
        }
    }
}

// MARK:- 设置UI界面
extension MainViewController {
    func setComposeBtn() {
        tabBar.addSubview(composeBtn)
        
        composeBtn.center = CGPoint(x: tabBar.center.x, y: tabBar.bounds.size.height * 0.5)
    }
}
