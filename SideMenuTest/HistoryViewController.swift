//
//  HistoryViewController.swift
//  SideMenuTest
//
//  Created by mac mini on 20/02/20.
//  Copyright © 2020 mac mini. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "History"
        sideMenuController?.hideMenu(animated: true, completion: nil)
        // Do any additional setup after loading the view.
        let backButton: UIBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(back))
        navigationController?.navigationItem.leftBarButtonItem = backButton

        
    }
    
    @objc func back() {
        let vc = storyboard?.instantiateViewController(identifier: "ViewController") as! ViewController
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
