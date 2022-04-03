//
//  ViewController.swift
//  TableView2
//
//  Created by Ayberk Bilgiç on 6.03.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    let myData: [String] = ["First", "Second", "Third", "Four", "Five"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let nib = UINib(nibName: "DemoTableViewCell", bundle: nil)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(nib, forCellReuseIdentifier: "DemoTableViewCell")
    }
    
    
    // TableViews Funcs
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DemoTableViewCell",
                                                 for: indexPath) as! DemoTableViewCell
        cell.myLabel.text = myData[indexPath.row]
        cell.myImageView.backgroundColor = .cyan
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DemoTableViewCell",
                                                 for: indexPath) as! DemoTableViewCell
        cell.myLabel.text = myData[indexPath.row]
        for i in 0...myData.count-1 {
            if cell.myLabel.text == myData[i] {
                print("You tapped \(myData[i])")
            }
        }
    }
                
    
    
    
    
}

 
