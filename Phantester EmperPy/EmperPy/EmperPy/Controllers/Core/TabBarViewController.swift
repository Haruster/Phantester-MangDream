//
//  TabBarViewController.swift
//  EmperPy
//
//  Created by 정준영 on 2021/05/17.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let core1 = HomeViewController()
        let core2 = SearchViewController()
        let core3 = LibraryViewController()
        
        core1.title = "Browse"
        core2.title = "search"
        core3.title = "Library"
        
        core1.navigationItem.largeTitleDisplayMode = .always
        core2.navigationItem.largeTitleDisplayMode = .always
        core3.navigationItem.largeTitleDisplayMode = .always
        
        let nav1 = UINavigationController(rootViewController: core1)
        let nav2 = UINavigationController(rootViewController: core2)
        let nav3 = UINavigationController(rootViewController: core3)
        
        nav1.navigationBar.prefersLargeTitles = true
        nav2.navigationBar.prefersLargeTitles = true
        nav3.navigationBar.prefersLargeTitles = true
        
        setViewControllers(([nav1, nav2, nav3]), animated: false)
        
    }

}
