//
//  ViewControllerLogic.swift
//  BlockNote
//
//  Created by Kei on 12/18/17.
//  Copyright © 2017 Kei. All rights reserved.
//

import UIKit

protocol ViewControllerLogicObject: NSObjectProtocol {
    associatedtype ViewController: UIViewController
    var viewController: ViewController! {get set}
    init(viewController: ViewController)
}

class Presentor<ViewController: UIViewController>: NSObject, ViewControllerLogicObject {
    weak var viewController: ViewController!
    
    required init(viewController: ViewController) {
        super.init()
        self.viewController = viewController
    }
}

class Router<ViewController: UIViewController>: NSObject, ViewControllerLogicObject {
    weak var viewController: ViewController!
    required init(viewController: ViewController) {
        super.init()
        self.viewController = viewController
    }
}

class Decorator<ViewController: UIViewController>: NSObject, ViewControllerLogicObject {
    
    weak var viewController: ViewController! {
        didSet {
            self.decorViewController()
        }
    }
    
    required init(viewController: ViewController) {
        super.init()
        self.viewController = viewController
    }
    
    func decorViewController() {
        
    }
}

protocol SeguePreparation {
    func prepareForSegue(_ segue: UIStoryboardSegue)
}
