//
//  SceneDelegate.swift
//  EmperPy
//
//  Created by 정준영 on 2021/05/16.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        
        if Authmanager.shared.isSignedIn {
            
            window.rootViewController = TabBarViewController()
            
        }
        
        else {
            
            let navCore = UINavigationController(rootViewController: WelcomeViewController())
            
            navCore.navigationBar.prefersLargeTitles = true
            navCore.viewControllers.first?.navigationItem.largeTitleDisplayMode = .always
            
            window.rootViewController = navCore
            
        }
        
        window.makeKeyAndVisible()
        
        self.window = window
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        
    }

    func sceneWillResignActive(_ scene: UIScene) {
        
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
       
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
       
    }


}

