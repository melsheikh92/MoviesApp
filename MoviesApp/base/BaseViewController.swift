//
//  BaseViewController.swift
//  MoviesApp
//
//  Created by Mahmoud on 9/29/18.
//  Copyright © 2018 Mahmoud. All rights reserved.
//

import UIKit
import JGProgressHUD
import TTGSnackbar
import SwiftEventBus
class BaseViewController: UIViewController {
    var hud:JGProgressHUD?
    var snackbar:TTGSnackbar?
    override func viewDidLoad() {
        super.viewDidLoad()
        hud = JGProgressHUD(style: .dark)
        
        SwiftEventBus.onMainThread(self, name:Constants.Events.reachabilityEventNoInternet) { result in
            //    if(result.userInfo ==  )
            self.showSnackbar(txt: "No Internet Connection")
            
        }
        SwiftEventBus.onMainThread(self, name:Constants.Events.ReachabilityEventInternet) { result in
            self.hideSnackbar()
        }
    }
    
    
    
    
}
