//
//  SplashViewController.swift
//  myopinionz
//
//  Created by Prudhvi Monikuntla on 12/2/18.
//  Copyright © 2018 Prudhvi Monikuntla. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    @IBOutlet var splashView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        launchLoginViewController()
    
    }
    
    func launchLoginViewController() {
        UIView.animate(withDuration: 3.0, animations: {
            self.splashView.frame = CGRect(x: 0, y:0, width: 375, height: 647)
        }) {(finished) in
            self.performSegue(withIdentifier: "segueToOptionsToLogin", sender: nil)
        }
//        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
//            self.performSegue(withIdentifier: "segueToLogin", sender: nil)
//        }
    }
    

    

}
