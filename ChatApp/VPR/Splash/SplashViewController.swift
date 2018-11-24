//
//  SplashViewController.swift
//  ChatApp
//
//  Created by Kei on 11/24/18.
//  Copyright © 2018 Kei. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {
    
    var presentor: (Presentor<SplashViewController> & SplashViewControllerPresentor)?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        presentor = SplashPresentor(viewController: self)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        presentor?.checkUser()
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
