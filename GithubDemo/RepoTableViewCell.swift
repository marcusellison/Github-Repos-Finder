//
//  RepoTableViewCell.swift
//  GithubDemo
//
//  Created by Marcus J. Ellison on 5/13/15.
//  Copyright (c) 2015 codepath. All rights reserved.
//

import UIKit

class RepoTableViewCell: UITableViewCell {

    @IBOutlet weak var repoTitleLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var avatarView: UIImageView!
    @IBOutlet weak var repoStarsLabel: UILabel!
    @IBOutlet weak var repoForksLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        ownerLabel.preferredMaxLayoutWidth = ownerLabel.frame.size.width
        descriptionLabel.preferredMaxLayoutWidth = descriptionLabel.frame.size.width
    }
    
    

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var repo: GithubRepo! {
        didSet {
            let url = NSURL(string: repo.ownerAvatarURL!)
            let forks = Int(repo.forks!)
            let stars = Int(repo.stars!)
            
            avatarView.setImageWithURL(url)
            repoTitleLabel.text = String(repo.name!)
            ownerLabel.text = String(repo.ownerHandle!)
            repoStarsLabel.text = "\(stars)"
            repoForksLabel.text = "\(forks)"
            descriptionLabel.text = String(repo.description!)
        }
    }


}
