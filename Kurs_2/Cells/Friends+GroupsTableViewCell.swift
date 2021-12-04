//
//  Friends+GroupsTableViewCell.swift
//  Kurs_2
//
//  Created by Ivan Bezgin on 30.11.2021.
//

import UIKit

class Friends_GroupsTableViewCell: UITableViewCell {

    @IBOutlet weak var profileFotoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        descriptionLabel.text = nil
        nameLabel.text = nil
        profileFotoImageView.image = nil
    }
    
    
    func configure(image: UIImage?, name: String?, description: String) {
        descriptionLabel.text = description
        nameLabel.text = name
        profileFotoImageView.image = image
    }
    
    func configure(friend: Friend) {
        descriptionLabel.text = friend.description
        nameLabel.text = friend.name
        if let imageName = friend.image { profileFotoImageView.image = UIImage(named: imageName) }
    }
    
    func configure(group: Group) {
        descriptionLabel.text = group.description
        nameLabel.text = group.name
        if let imageName = group.image { profileFotoImageView.image = UIImage(named: imageName) }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
