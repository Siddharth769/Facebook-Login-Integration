//
//  ViewController.swift
//  FacebookIntegration
//
//  Created by siddharth on 26/12/18.
//  Copyright © 2018 clarionTechnologies. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController, FBSDKLoginButtonDelegate {
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
         print("Did Logout")
    }
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        if error != nil {
            print(error)
            return
        }else {
            print("Successfully")
    }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let loginButton = FBSDKLoginButton()
        view.addSubview(loginButton)
        loginButton.frame = CGRect(x: 16, y: 50, width: view.frame.width - 32, height: 50)
        loginButton.delegate = self
    }


}

