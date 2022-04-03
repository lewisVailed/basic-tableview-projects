//
//  ViewController.swift
//  basicIntagramFeed
//
//  Created by Ayberk Bilgiç on 13.03.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var table: UITableView!

    var posts = [InstagramPost]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.register(PostTableViewCell.nib(), forCellReuseIdentifier: PostTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
        
        posts.append(InstagramPost(numberOfLikes: 271, userName: "zuck", postImageName: "post_1", userImageName: "head"))
        posts.append(InstagramPost(numberOfLikes: 48, userName: "dan", postImageName: "post_2", userImageName: "head"))
        posts.append(InstagramPost(numberOfLikes: 447_000, userName: "sheriff", postImageName: "post_3", userImageName: "head"))
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: PostTableViewCell.identifier, for: indexPath) as! PostTableViewCell
        cell.configure(with: posts[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140+view.frame.size.width
    }

}

struct InstagramPost {
    let numberOfLikes: Int
    let userName: String
    let postImageName: String
    let userImageName: String
    
    init(numberOfLikes: Int, userName: String, postImageName: String, userImageName: String) {
        self.numberOfLikes = numberOfLikes
        self.userName = userName
        self.postImageName = postImageName
        self.userImageName = userImageName
    }
}
