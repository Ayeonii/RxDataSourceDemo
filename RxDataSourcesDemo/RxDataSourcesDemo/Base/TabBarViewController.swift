//
//  TabBarViewController.swift
//  RxDataSourcesDemo
//
//  Created by 이아연 on 2021/05/17.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setTabbarVC()
    }
    
    func setTabbarVC () {
        let basicVC = BasicViewController(nibName: "BasicViewController", bundle: nil)
        basicVC.tabBarItem = UITabBarItem(title: "Basic", image: UIImage(named: "basic"), selectedImage: UIImage(named: "basic"))

        let interVC = IntermediateViewController(nibName: "IntermediateViewController", bundle: nil)
        interVC.tabBarItem = UITabBarItem(title: "Intermediate", image: UIImage(named: "intermediate"), selectedImage: UIImage(named: "intermediate"))
        
        let interMoreVC = IntermediateMoreViewController(nibName: "IntermediateMoreViewController", bundle: nil)
        interMoreVC.tabBarItem = UITabBarItem(title: "intermediateMore", image: UIImage(named: "more"), selectedImage: UIImage(named: "more"))
        
        let advancedVC = AdvancedViewController(nibName: "AdvancedViewController", bundle: nil)
        advancedVC.tabBarItem = UITabBarItem(title: "Advanced", image: UIImage(named: "advanced"), selectedImage: UIImage(named: "advanced"))

        self.viewControllers = [
            UINavigationController(rootViewController: basicVC),
            UINavigationController(rootViewController: interVC),
            UINavigationController(rootViewController: interMoreVC),
            UINavigationController(rootViewController: advancedVC)
        ]
    }
    
}
