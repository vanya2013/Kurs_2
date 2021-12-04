//
//  FriendsVC+DataSource.swift
//  Kurs_2
//
//  Created by Ivan Bezgin on 30.11.2021.
//

import UIKit

extension FriendsViewController: UITableViewDataSource {
    
    func configureTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: friendsAndGroupsTableViewCell, bundle: nil), forCellReuseIdentifier: friendCellReuseIdentifire)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: friendCellReuseIdentifire, for: indexPath) as? Friends_GroupsTableViewCell
        else { return UITableViewCell() }
        
        cell.configure(friend: friendsArray[indexPath.row])
        return cell
    }

    
}
