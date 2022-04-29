//
//  GroupDetailsTableViewController.swift
//  Checklists
//
//  Created by beehive-iOS on 4/22/22.
//

import UIKit

class GroupDetailsTableViewController: UITableViewController {
    
    var items: [ChecklistItem] = [
        
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GroupDetailsToAddItem",
           let  vc = segue.destination as? AddItemTableViewController,
           let indexPath = tableView.indexPathForSelectedRow {
            vc.title = "Edit item"
            vc.item = items[indexPath.row]
               }
    }
    
}
