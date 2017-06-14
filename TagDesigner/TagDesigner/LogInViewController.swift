//
//  LogInViewController.swift
//  TagDesigner
//
//  Created by William Cuc on 1/06/17.
//  Copyright © 2017 William Cuc. All rights reserved.
//
import FBSDKLoginKit
import FBSDKCoreKit
import UIKit
import FacebookLogin

class LogInViewController: ViewController, FBSDKLoginButtonDelegate {

    @IBAction func logIn(_ sender: Any) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loginButton = FBSDKLoginButton()
        view.addSubview(loginButton)
        loginButton.frame = CGRect(x: 16, y: 425, width: view.frame.width - 32, height: 30)
        
        loginButton.delegate = self
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("Salir de Facebook")
    }
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        if error != nil{
            print(error)
            return
        }
        print("Logueo Correcto")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
