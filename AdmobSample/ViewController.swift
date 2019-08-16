//
//  ViewController.swift
//  AdmobSample
//
//  Created by yonekan on 2019/08/16.
//  Copyright © 2019 yonekan. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {

    // 広告ユニットID
    let AdMobID = "[Your AdMob ID]"
    // テスト用広告ユニットID
    let TEST_ID = "ca-app-pub-3940256099942544/2934735716"
    
    // true:テスト
    let AdMobTest:Bool = true
    
    @IBOutlet weak var admobView: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Google Mobile Ads SDK version: \(GADRequest.sdkVersion())")
        
        if AdMobTest {
            admobView.adUnitID = TEST_ID
        } else {
            admobView.adUnitID = AdMobID
        }
        
        admobView.rootViewController = self
        
        admobView.load(GADRequest())

    }

}
