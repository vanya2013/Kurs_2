//
//  GroupsVC+DataSourse.swift
//  Kurs_2
//
//  Created by Ivan Bezgin on 01.12.2021.
//

import UIKit

extension GroupsViewController: UITableViewDataSource {

    func configureTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: friendsAndGroupsTableViewCell, bundle: nil) , forCellReuseIdentifier: groupCellReuseIdentifire)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupsArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: groupCellReuseIdentifire, for: indexPath) as? Friends_GroupsTableViewCell
        else { return UITableViewCell() }

        cell.configure(group: groupsArray[indexPath.row])
        return cell
    }


}
