//
//  ViewController.swift
//  App20220313FBLogin
//
//  Created by grace on 2022/3/13.
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loginButton = FBLoginButton()
        loginButton.center = view.center
        view.addSubview(loginButton)
    }


}

