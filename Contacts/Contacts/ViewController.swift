//
//  ViewController.swift
//  Contacts
//
//  Created by Ayberk Bilgiç on 6.03.2022.
//

import UIKit

class ViewController: UIViewController {
    // tableViewi tanımlıyoruz
    @IBOutlet var tableView: UITableView!
    
    var names = [
        "John Smith",
        "Dan Smith",
        "Jason Smith",
        "Mary Smith"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
    }


}
// delegate içine kontrol edilecek öğe konuluyor.
// didSelectRowAt öğe seçildiğinde vericeği tepki için
extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped me")
    }
    
}
// data saklama ve delegate için kullanılacak bilgiyi sağlama
extension ViewController : UITableViewDataSource {
    // bölümlerin kaç sayıda olacağı
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    // numberOfRowInSection bölüm içindeki satır sayısı
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    // cellForRowAt asıl çağırıcı komut
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // cell i tableViewe tanımlana
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        // textLabel yazı formatı için, names arrayi içindeki içeriğe ulaşıyoruz
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    
    
}
