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
    
    func appRegisteredWithError(_ error: Error?) {
        
    }
    
//    func showAlertView(withTitle title: String, withMessage message: String) {
//        UIAlertController
//    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.registerApp()
    }
    
    func registerApp() {
        DJISDKManager.registerApp(with: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

