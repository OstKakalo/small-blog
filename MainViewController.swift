//
//  MainViewController.swift
//  SmallBlog
//
//  Created by 胡梦龙 on 2017/4/20.
//  Copyright © 2017年 胡梦龙. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    private lazy var imageNames = ["tabbar_home_high", "tabbar_message_high", "", "tabbar_discover_high", "tabbar_profile_high"];
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
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
