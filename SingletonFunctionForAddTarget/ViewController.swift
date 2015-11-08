//
//  ViewController.swift
//  SingletonFunctionForAddTarget
//
//  Created by Moment Inc. on 11/10/15.
//  Copyright © 2015 Moment Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnGotoVacation: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        btnGotoVacation.addTarget(MySingletonClass.sharedInstance, action: Selector("visitBodrum:"), forControlEvents:.TouchUpInside)
    }
}

class MySingletonClass:NSObject {
    static let sharedInstance = MySingletonClass()
    
    func visitBodrum(sender:AnyObject) {
        print("don't forget to visit yalikavak :) ")
    }
}