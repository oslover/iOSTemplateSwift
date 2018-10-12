
//
//  BaseViewController.swift
//  Construction
//
//  Created by Macmini on 11/19/17.
//  Copyright © 2017 LekshmySankar. All rights reserved.
//

import UIKit

class BarHidableViewController: UIViewController {
    @IBInspectable var showNavigationBar: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let navController = self.navigationController{
            navController.setNavigationBarHidden(!showNavigationBar, animated: false)
            navController.navigationBar.topItem?.title = self.title
        }        
        if let tabBarController = self.tabBarController, let navTab = tabBarController.navigationController {
            navTab.navigationBar.topItem?.title = self.title
        }
    }
}
