//
//  DemoTableViewCell.swift
//  repeatTableView3
//
//  Created by Ayberk Bilgiç on 9.03.2022.
//

import UIKit

class DemoTableViewCell: UITableViewCell {

    @IBOutlet var myImageView: UIImageView!
    @IBOutlet var myLabel: UILabel!
    
    
    static var identifier = "DemoTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "DemoTableViewCell", bundle: nil)
    }
    
    public func configure(with title: String, imageName: String) {
        myLabel.text = title
        myImageView.image = UIImage(systemName: imageName)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        myImageView.contentMode = .scaleAspectFit
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
