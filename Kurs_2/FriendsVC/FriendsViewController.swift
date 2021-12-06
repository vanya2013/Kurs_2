//
//  FriendsViewController.swift
//  Kurs_2
//
//  Created by Ivan Bezgin on 30.11.2021.
//

import UIKit

class FriendsViewController: UIViewController {

    let friendsAndGroupsTableViewCell = "Friends+GroupsTableViewCell"
    let friendCellReuseIdentifire = "fiendCellReuseIdentifire"
    let heightFriendsTableViewCell: CGFloat = 75
    
    @IBOutlet weak var tableView: UITableView!
    var friendsArray = [Friend]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fillFriendsArray()
        configureTableView()
       
    }
    
 

}
