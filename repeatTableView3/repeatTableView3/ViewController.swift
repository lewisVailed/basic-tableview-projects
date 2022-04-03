//
//  ViewController.swift
//  repeatTableView3
//
//  Created by Ayberk Bilgiç on 9.03.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var table: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        table.delegate = self
        table.dataSource = self
        table.register(DemoTableViewCell.nib(), forCellReuseIdentifier: DemoTableViewCell.identifier)
        table.register(FieldTableViewCell.nib(), forCellReuseIdentifier: FieldTableViewCell.identifier)
    
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if indexPath.row > 5 {
            let customCell = table.dequeueReusableCell(withIdentifier: DemoTableViewCell.identifier, for: indexPath) as! DemoTableViewCell
            customCell.configure(with: "Hey gear", imageName: "gear")
            return customCell
        }
        
        if indexPath.row > 3 {
            let fieldCell = table.dequeueReusableCell(withIdentifier: "FieldTableViewCell", for: indexPath) as! FieldTableViewCell
            return fieldCell
        }
        
        
        let cell = table.dequeueReusableCell(withIdentifier: DemoTableViewCell.identifier, for: indexPath) as! DemoTableViewCell
        cell.textLabel?.text = "Helloo"
        
        
        let mySwitch = UISwitch()
        mySwitch.addTarget(self, action: #selector(didChangeSwitch(_:)), for: .valueChanged)
        mySwitch.isOn = true
        cell.accessoryView = mySwitch
       
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75.00
    }
    
    @objc func didChangeSwitch(_ sender: UISwitch) {
        if sender.isOn {
             print("User turned it on")
        } else {
            print("User turned it off")
        }
    
    }

}

