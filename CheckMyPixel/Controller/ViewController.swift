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
    
    private static let topBannerId = "ca-app-pub-1533289263767155/2440927757"
    private static let bottomBannerId = "ca-app-pub-1533289263767155/8177304315"
    
    @IBOutlet weak var bottomBanner: GADBannerView!
    @IBOutlet weak var topBanner: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.setHidesBackButton(true, animated: false)
        
        setupBanner(self.topBanner, with: ViewController.topBannerId)
        setupBanner(self.bottomBanner, with: ViewController.bottomBannerId)
    }
    
    func bannerRequest() -> GADRequest {
        let request = GADRequest()
        
        #if (arch(i386) || arch(x86_64)) && os(iOS)
            request.testDevices = [kGADSimulatorID]
        #else
            request.testDevices = ["0191f9df712cb7d8ab2f5c46643be47f"]
        #endif
        
        return request
    }
    
    func setupBanner(_ banner: GADBannerView, with id: String)  {
        banner.adUnitID = id
        banner.rootViewController = self
        banner.delegate = self
        banner.load(self.bannerRequest())
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    //Animating a banner ad
    func adViewDidReceiveAd(_ bannerView: GADBannerView) {
        bannerView.alpha = 0
        UIView.animate(withDuration: 1, animations: {
            bannerView.alpha = 1
        })
    }
}

