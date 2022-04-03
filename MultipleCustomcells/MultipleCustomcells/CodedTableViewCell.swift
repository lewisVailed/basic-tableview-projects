//
//  CodedTableViewCell.swift
//  MultipleCustomcells
//
//  Created by Ayberk Bilgiç on 14.03.2022.
//

import UIKit

class CodedTableViewCell: UITableViewCell {
    
    static let identifier = "CodedTableViewCell"

    private let mylabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private let myImageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    public func configure(with model: tableV) {
        contentView.addSubview(mylabel)
        contentView.addSubview(myImageView)
        
        self.mylabel.text = "\(model.quote)"
        self.mylabel.textAlignment = .center
        self.myImageView.image = UIImage(named: model.imageName)
        self.myImageView.contentMode = .scaleAspectFill
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        myImageView.frame = CGRect(x: 20, y: 20, width: 100, height: 100)
        mylabel.frame = CGRect(x: 125, y: 25, width: contentView.frame.size.width-125 , height: 100)
        
        myImageView.layer.masksToBounds = true
        myImageView.layer.cornerRadius = 50.0
    }
}
