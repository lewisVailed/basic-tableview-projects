//
//  PostTableViewCell.swift
//  basicIntagramFeed
//
//  Created by Ayberk Bilgiç on 13.03.2022.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet var userImageView: UIImageView!
    @IBOutlet var postImageView: UIImageView!
    @IBOutlet var userLabel: UILabel!
    @IBOutlet var likesLabel: UILabel!
    
    
    static var identifier = "PostTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: PostTableViewCell.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configure(with model: InstagramPost) {
        self.likesLabel.text = "\(model.numberOfLikes) Likes"
        self.userLabel.text = model.userName
        self.userImageView.image = UIImage(named: model.userImageName)
        self.postImageView.image = UIImage(named: model.postImageName)
    }
    
}
