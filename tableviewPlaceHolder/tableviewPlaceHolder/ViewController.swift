//
//  ViewController.swift
//  tableviewPlaceHolder
//
//  Created by Ayberk Bilgiç on 19.03.2022.
//

import UIKit
import HGPlaceholders

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private let tableView = TableView()
    
    var data = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.frame = view.bounds
        tableView.backgroundColor = .systemCyan
        
        tableView.showLoadingPlaceholder()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
        
            self.tableView.showNoResultsPlaceholder()
        })
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }

}

