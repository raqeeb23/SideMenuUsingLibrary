//
//  MenuViewController.swift
//  SideMenuTest
//
//  Created by mac mini on 20/02/20.
//  Copyright © 2020 mac mini. All rights reserved.
//

import UIKit
import SideMenuSwift
class MenuViewController: UIViewController {

    @IBOutlet weak var imgProfile: UIImageView!
    
    @IBOutlet weak var tblMenuOptions: UITableView!
    let optionArray = ["History", "Inbox" , "Account"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tblMenuOptions.delegate = self
        tblMenuOptions.dataSource = self
        
        
        self.imgProfile.layer.cornerRadius = self.imgProfile.frame.size.width / 2;
        self.imgProfile.clipsToBounds = true ;
        imgProfile.layer.borderWidth = 1
        imgProfile.layer.borderColor = UIColor.white.cgColor
    }
    @IBAction func goToProfile(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "ProfileViewController") as! ProfileViewController
        sideMenuController?.present(vc , animated: true, completion: nil)
        sideMenuController?.hideMenu(animated: true, completion: nil)
    }
    
}

extension MenuViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return optionArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SideMenuCell") as! SideMenuCell
        cell.lblOption.text = optionArray[indexPath.row]
        return cell
    }
    
    
}


extension MenuViewController: UITableViewDelegate{
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        switch indexPath.row {
        case 0:

           print("history")
           let vc = storyboard?.instantiateViewController(identifier: "HistoryViewController") as! HistoryViewController
           sideMenuController?.present(vc , animated: true, completion: nil)
           sideMenuController?.hideMenu(animated: true, completion: nil)

        case 1:
         
            print("Inbox")
            let vc = storyboard?.instantiateViewController(identifier: "InboxViewController") as! InboxViewController
            sideMenuController?.present(vc , animated: true, completion: nil)
            sideMenuController?.hideMenu(animated: true, completion: nil)

        case 2:
        
            print("Account")
            let vc = storyboard?.instantiateViewController(identifier: "AccountViewController") as! AccountViewController
            sideMenuController?.present(vc , animated: true, completion: nil)
            sideMenuController?.hideMenu(animated: true, completion: nil)

        default:
            break
        }
    
    }
}
