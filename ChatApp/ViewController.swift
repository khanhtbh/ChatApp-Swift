//
//  ViewController.swift
//  ChatApp
//
//  Created by Kei on 9/1/18.
//  Copyright © 2018 Kei. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let ws = SRWebSocket.init(url: URL.init(string: "wss://127.0.0.1:3000/?user=1"), protocols: ["wss", "ws"], allowsUntrustedSSLCertificates: true)
        ws?.open()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

