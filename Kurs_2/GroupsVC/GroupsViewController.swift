//
//  GroupsViewController.swift
//  Kurs_2
//
//  Created by Ivan Bezgin on 01.12.2021.
//

import UIKit

class GroupsViewController: UIViewController {

    let friendsAndGroupsTableViewCell = "Friends+GroupsTableViewCell"
    let groupCellReuseIdentifire = "groupCellReuseIdentifire"
    let heightGroupsTableViewCell: CGFloat = 75
    
    @IBOutlet weak var tableView: UITableView!
    var groupsArray = [Group]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fillGroupsArray()
        configureTableView()


    }
    


}
