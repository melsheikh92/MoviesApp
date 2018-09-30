//
//  Navigator.swift
//  MoviesApp
//
//  Created by Mahmoud on 9/29/18.
//  Copyright © 2018 Mahmoud. All rights reserved.
//
import UIKit
import Foundation
class Navigator : NSObject{

    static func onMoveToSignUp(view : UIViewController){
        let vc: UIViewController? = view.storyboard?.instantiateViewController(withIdentifier: "viewSignUp")
        if let aVc = vc {
            view.navigationController?.pushViewController(aVc, animated: true)
        }
        else{
            print("Error")
        }
    }
    
    static func onMoveToSignIn(view : UIViewController){
        let vc: UIViewController? = view.storyboard?.instantiateViewController(withIdentifier: "viewSignIn")
        if let aVc = vc {
            view.navigationController?.pushViewController(aVc, animated: true)
        }
    }
    
    static func onMoveToHome(view : UIViewController){
        let vc: UIViewController? = view.storyboard?.instantiateViewController(withIdentifier: "viewHome")
        if let aVc = vc {
            view.navigationController?.pushViewController(aVc, animated: true)
        }
    }
    
    static func onMoveToSignUpV(view : UIViewController){
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let vc: UIViewController? = storyboard.instantiateViewController(withIdentifier: "viewSignUp")
        if let aVc = vc {
            view.present(aVc, animated: true, completion: nil)
        }
        else{
            print("Error")
        }
    }

    
    
    
}
