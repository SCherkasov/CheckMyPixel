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
        // Initialize the Google Mobile Ads SDK.
        // Sample AdMob app ID: ca-app-pub-3940256099942544~1458002511
        // TODO: register your application at ad mob, and add real Ids
        
        GADMobileAds.configure(withApplicationID: "ca-app-pub-1533289263767155~4384564818")
        
        // TODO: why do you need this? where did you read about it?
        //FirebaseApp.configure()
        
        return true
    }
}
