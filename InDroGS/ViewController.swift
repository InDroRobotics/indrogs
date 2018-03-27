//
//  ViewController.swift
//  InDroGS
//
//  Created by Brian Badesso on 2017-10-16.
//  Copyright © 2017 Brian Badesso. All rights reserved.
//

import UIKit
import DJISDK

class ViewController: UIViewController, DJISDKManagerDelegate {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.registerApp()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: DJISDKManagerDelegate Methods
    func registerApp() {
        DJISDKManager.registerApp(with: self)
    }
    
    //MARK: Custom Methods
    func appRegisteredWithError(_ error: Error?) {
        var message: String = "App registration succeeded!"
        if (error != nil) {
            message = "App registration failed! Please enter your app key in the plist file and check the network"
        } else {
            NSLog("AppRegistrationSucceeded")
        }
        
        self.showAlertView(withTitle: "Register App", withMessage: message)
    }
    
    func showAlertView(withTitle title: String, withMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
