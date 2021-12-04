//
//  Data.swift
//  Kurs_2
//
//  Created by Ivan Bezgin on 01.12.2021.
//

import UIKit

extension FriendsViewController {

    func fillFriendsArray() {
        let friend1 = Friend(name: "Иван", description: "Безгин", image: "DESIGN")
        let friend2 = Friend(name: "Марк", description: "Аврелий", image: "asdasd")
        let friend3 = Friend(name: "Марк", description: "Аврелий", image: "asdasd")
            
        friendsArray.append(friend1)
        friendsArray.append(friend2)
        friendsArray.append(friend3)
    }
}
