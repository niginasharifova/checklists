//
//  SwitchTableViewCell.swift
//  Checklists
//
//  Created by beehive-iOS on 4/25/22.
//

import UIKit

class SwitchTableViewCell: UITableViewCell {
    
    var onSwitchChanged: (() -> Void)? 
    
    @IBOutlet weak var switchRemind: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func switchDidChange(_ sender: UISwitch) {
        print("значение свитча: \(sender.isOn)")
        onSwitchChanged?()
       }
}
