//
//  Data.swift
//  Kurs_2
//
//  Created by Ivan Bezgin on 01.12.2021.
//

import UIKit

extension GroupsViewController {
    
    func fillGroupsArray() {
        let group1 = Group(name: "Группа", description: "1", image: "DESIGN", galleryImagesArray: ["1", "2", "3", "4", "5", "6"])
        let group2 = Group(name: "Группа", description: "2", image: "asdasd", galleryImagesArray: nil)
        let group3 = Group(name: "Группа", description: "3", image: "asdasd", galleryImagesArray: nil)
        let group4 = Group(name: "Группа", description: "4", image: "DESIGN", galleryImagesArray: nil)
        groupsArray.append(group1)
        groupsArray.append(group2)
        groupsArray.append(group3)
        groupsArray.append(group4)
    }
}
