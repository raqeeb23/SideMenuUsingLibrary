//
//  ViewController.swift
//  SideMenuTest
//
//  Created by mac mini on 20/02/20.
//  Copyright © 2020 mac mini. All rights reserved.
//

import UIKit
import SideMenuSwift
class ViewController: UIViewController {
    var vc: UIViewController?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
  
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        if let vc = vc { navigationController?.pushViewController(vc, animated: true)
        }else{
            return
        }
    }
    

    @IBAction func showMenu(_ sender: Any) {
        sideMenuController?.revealMenu()
    }
}

