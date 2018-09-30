
//
//  UIViewController+helpers.swift
//  MoviesApp
//
//  Created by Mahmoud on 9/26/18.
//  Copyright © 2018 Mahmoud. All rights reserved.
//

import Foundation
import UIKit
import TTGSnackbar
import JGProgressHUD

extension BaseViewController{
    func showHUD(){
        self.hud?.show(in: self.view)
    }
    func hideHUD(){
        self.hud?.dismiss()
    }
    
    func showSnackbar(txt:String){
        snackbar = TTGSnackbar(message: txt, duration: .middle)
        snackbar?.show()
    }
    func showSnackbarForever(txt:String){
        snackbar = TTGSnackbar(message: txt, duration: .forever)
        snackbar?.show()
    }
    func hideSnackbar(){
        snackbar?.dismiss()
        
    }
    func presentVC(storyBoardId:String ){}
    func pushVC(storyBoardId:String ){}
}
