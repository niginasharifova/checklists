//
//  GroupDetailsTableViewController.swift
//  Checklists
//
//  Created by beehive-iOS on 4/22/22.
//

import UIKit

class GroupDetailsTableViewController: UITableViewController {
    
    let items: [ChecklistItem] = [
        ChecklistItem(isChecked: true, nameItem: "Walk the dog"),
        ChecklistItem(isChecked: true, nameItem: "Brush teeth"),
        ChecklistItem(isChecked: false, nameItem: "Learn iOS development"),
        ChecklistItem(isChecked: false, nameItem: "Soccer practice"),
        ChecklistItem(isChecked: true, nameItem: "Eat icecream"),
        ChecklistItem(isChecked: false, nameItem: "Dance in the rain")
    ]
    
        
    
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item: ChecklistItem = items[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItemCell") as! ChecklistItemCell
        cell.itemNameLabel.text = item.nameItem
        cell.itemImage.isHidden = !item.isChecked
//        if item.isChecked {
//            cell.itemImage.isHidden = false
//        } else {
//            cell.itemImage.isHidden = true
//        }
        return cell
    }

    
}
