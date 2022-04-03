//
//  ViewController.swift
//  SearchableTableview
//
//  Created by Ayberk Bilgiç on 12.03.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {

    @IBOutlet var table: UITableView!
    @IBOutlet var field: UITextField!
    
    var data = [String]()
    var filteredData = [String]()
    var filtered = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
        table.delegate = self
        table.dataSource = self
        field.delegate = self
    }
    
    private func setupData() {
        data.append("Carl")
        data.append("Penny")
        data.append("Palm")
        data.append("Jen")
        data.append("John")
        data.append("Heily")
        data.append("Bran")
        data.append("Stephen")
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if let text = textField.text {
                   if string.count == 0 {
                       filterText(String(text.dropLast()))
                   } else {
                       filterText(text + string)
                   }
        }
        return true
    }
    
    func filterText(_ query: String) {
        filteredData.removeAll()
        for string in data {
            if string.lowercased().starts(with: query.lowercased()) {
                filteredData.append(string)
            }
        }
        table.reloadData()
        filtered = true
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if !filteredData.isEmpty {
            return filteredData.count
        } else {
            return filtered ? 0 : data.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath)
        if !filteredData.isEmpty {
            cell.textLabel?.text = filteredData[indexPath.row]
        } else {
            cell.textLabel?.text = data[indexPath.row]
        }
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

