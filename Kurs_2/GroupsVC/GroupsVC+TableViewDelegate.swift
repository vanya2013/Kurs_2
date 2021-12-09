//
//  GroupsVC+TableViewDelegate.swift
//  Kurs_2
//
//  Created by Ivan Bezgin on 01.12.2021.
//

import UIKit


import UIKit

extension GroupsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return heightGroupsTableViewCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let sendingArray = groupsArray[indexPath.row].galleryImagesArray else { return }
        
        let toGallery = GalleryViewController(nibName: "GalleryViewController", bundle: nil)
        toGallery.galleryImagesArray = sendingArray
        toGallery.modalPresentationStyle = .fullScreen
        
        guard let navigationController = self.navigationController else { return }
        navigationController.pushViewController(toGallery, animated: true)

    }
   
}
