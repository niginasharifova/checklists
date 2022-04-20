//
//  ChecklistGroupTableViewCell.swift
//  Checklists
//
//  Created by beehive-iOS on 4/18/22.
//

import UIKit

class GroupTableViewCell: UITableViewCell {

    @IBOutlet weak var groupTitleLabel: UILabel!
    
    @IBOutlet weak var iconView: UIImageView!
    
    @IBOutlet weak var subtitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
