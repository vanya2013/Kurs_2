//
//  SetingViewController.swift
//  Kurs_2
//
//  Created by Ivan Bezgin on 29.11.2021.
//

import UIKit

class SetingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    let toLoginView = "fromSetingToLoginView"

    @IBAction func pressLogOutButton(_ sender: UIButton) {

//        guard let navigationController = self.navigationController else { return }
//        var navigationArray = navigationController.viewControllers
//        let temp = navigationArray.last
//        navigationArray.removeAll()
//        navigationArray.append(temp!)
//        self.navigationController?.viewControllers = navigationArray
        
        guard let navigationController = self.navigationController else { return }
        navigationController.viewControllers.removeAll()
        
        performSegue(withIdentifier: toLoginView, sender: nil)
    }
    
}
