//
//  FieldTableViewCell.swift
//  repeatTableView3
//
//  Created by Ayberk Bilgiç on 9.03.2022.
//

import UIKit

class FieldTableViewCell: UITableViewCell, UITextFieldDelegate{
    
    @IBOutlet var field: UITextField!
    
    static let identifier = "FieldTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: FieldTableViewCell.identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        field.placeholder = "Please text your message"
        field.delegate = self
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        print("\(textField.text ?? "")")
        return true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
