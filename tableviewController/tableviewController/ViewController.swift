//
//  ViewController.swift
//  tableviewController
//
//  Created by Ayberk Bilgiç on 12.03.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func didTapButtonOne() {
        let cv = MyTableViewController()
        cv.models = [
            ("first", {
                print("something")
            }),
            ("second", {
                print("something another")
            }),
            ("third", {
                print("and another")
            })
        ]
        navigationController?.pushViewController(cv, animated: true)
    }

    @IBAction func didTapButtonTwo() {
        let cv = MyTableViewController()
        navigationController?.pushViewController(cv, animated: true)
    }
}

