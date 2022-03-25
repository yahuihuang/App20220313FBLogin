//
//  ViewController.swift
//  App20220313FBLogin
//
//  Created by grace on 2022/3/13.
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController, LoginButtonDelegate {
    // FB Login OK
    func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
        print("Login FB")
    }
    
    // FB Logout OK
    func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
        print("Logout FB")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loginButton = FBLoginButton()
        loginButton.center = view.center
        loginButton.delegate = self
        view.addSubview(loginButton)
    }


}

