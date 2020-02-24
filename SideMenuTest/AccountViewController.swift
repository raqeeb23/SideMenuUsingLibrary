//
//  HistoryViewController.swift
//  SideMenuTest
//
//  Created by mac mini on 20/02/20.
//  Copyright © 2020 mac mini. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        sideMenuController?.hideMenu(animated: true, completion: nil)
        // Do any additional setup after loading the view.
    }
    

    @IBAction func GotoHomeScreen(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
