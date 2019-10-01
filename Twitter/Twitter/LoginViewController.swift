//
//  LoginViewController.swift
//  Twitter
//
//  Created by Elizabeth Hernandez on 9/30/19.
//  Copyright © 2019 Dan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //check that user is logged in
        if UserDefaults.standard.bool(forKey: "userLoggedIn") == true {
            //if they are logged in, navigate to home screen
            self.performSegue(withIdentifier: "loginToHome", sender: self)
        }
    }
    

    @IBAction func onLoginButton(_ sender: Any) {
        let myUrl = "https://api.twitter.com/oauth/request_token"
        TwitterAPICaller.client?.login(url: myUrl, success: {
            //set logged in to true
            UserDefaults.standard.set(true, forKey: "userLoggedIn")
            //navigate to home screen onced logged in
            self.performSegue(withIdentifier: "loginToHome", sender: self)
            
        }, failure: { (Error) in
            print("Could not log in!")
        })
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
