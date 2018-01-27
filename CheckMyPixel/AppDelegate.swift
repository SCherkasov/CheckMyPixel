//
//  AppDelegate.swift
//  CheckMyPixel
//
//  Created by Stanislav Cherkasov on 17.01.18.
//  Copyright © 2018 Stanislav Cherkasov. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool
    {
        
        GADMobileAds.configure(withApplicationID: "ca-app-pub-3940256099942544~1458002511")
        
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        
        UINavigationBar.appearance().shadowImage = UIImage()
        
        UINavigationBar.appearance().backgroundColor = .clear
        
        UINavigationBar.appearance().isTranslucent = true
        
        
        return true
    }
}
