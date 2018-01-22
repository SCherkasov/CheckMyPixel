//
//  ViewController.swift
//  CheckMyPixel
//
//  Created by Stanislav Cherkasov on 17.01.18.
//  Copyright © 2018 Stanislav Cherkasov. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController, GADBannerViewDelegate {

    @IBOutlet weak var bottomBanner: GADBannerView!
    
    @IBOutlet weak var topBanner: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Request
        let request = GADRequest()
        request.testDevices = [kGADSimulatorID]
        
        //Setup bottomBanner
        bottomBanner.adUnitID = "ca-app-pub-1533289263767155/2440927757"
        bottomBanner.rootViewController = self
        bottomBanner.delegate = self
        bottomBanner.load(request)
        
        //Setup topBanner
        topBanner.adUnitID = "ca-app-pub-1533289263767155/8177304315"
        topBanner.rootViewController = self
        topBanner.delegate = self
        topBanner.load(request)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

}

