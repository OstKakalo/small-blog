//
//  MainViewController.swift
//  SmallBlog
//
//  Created by 胡梦龙 on 2017/4/20.
//  Copyright © 2017年 胡梦龙. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addChildViewController(HomeViewController(), title: "首页", imageName: "tabbar_home", selectedImage: "tabbar_home_high")
        addChildViewController(MessageViewController(), title: "消息", imageName: "tabbar_message", selectedImage: "tabbar_message_high")
        addChildViewController(DiscoverViewController(), title: "发现", imageName: "tabbar_discover", selectedImage: "tabbar_discover_high")
        addChildViewController(MessageViewController(), title: "我", imageName: "tabbar_profile", selectedImage: "tabbar_profile_high")
    }
    
    // private当前文件才能访问
    private func addChildViewController(_ childVc: UIViewController, title: String, imageName: String, selectedImage: String) {
        childVc.title = title
        childVc.tabBarItem.image = UIImage(named: imageName)
        childVc.tabBarItem.selectedImage = UIImage(named: selectedImage)
        let childNav = BaseNavigationController(rootViewController: childVc)
        addChildViewController(childNav)
    }

}
