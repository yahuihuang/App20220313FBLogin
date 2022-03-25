//
//  ViewController.swift
//  App20220313FBLogin
//
//  Created by grace on 2022/3/13.
//

import UIKit
import Firebase
import FBSDKLoginKit

class ViewController: UIViewController, LoginButtonDelegate {
    // FB Login OK
    func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
        print("Login FB")
        
        let credential = FacebookAuthProvider
          .credential(withAccessToken: AccessToken.current!.tokenString)
        
        Auth.auth().signIn(with: credential) { authData, error in
            print(error?.localizedDescription ?? "")
            print("Complate")
        }
    }
    
    // FB Logout OK
    func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
        print("Logout FB")
        
        do{
            try Auth.auth().signOut()
        }catch{
            print(error.localizedDescription)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loginButton = FBLoginButton()
        loginButton.center = view.center
        loginButton.delegate = self
        view.addSubview(loginButton)
    }


}

