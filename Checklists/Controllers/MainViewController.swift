//
//  ViewController.swift
//  Checklists
//
//  Created by beehive-iOS on 4/15/22.
//

import UIKit

class MainViewController: UITableViewController {
    
    let groups: [ChecklistGroup] = [
        ChecklistGroup(title: "Birthdays", imageName: "Birthdays", items: [ChecklistItem(isChecked: true, nameItem: "BD", remindMe: false, dueDate: nil)]),
        ChecklistGroup(title: "Business Stuff", imageName: "Folder", items: [ChecklistItem(isChecked: true, nameItem: "BS", remindMe: true, dueDate: Date())]),
        ChecklistGroup(title: "Chores", imageName: "Chores", items: []),
        ChecklistGroup(title: "Groceries", imageName: "Groceries", items: [ChecklistItem(isChecked: false, nameItem: "Groceries", remindMe: true, dueDate: Date())]),
        ChecklistGroup(title: "To Do", imageName: "Inbox", items: [ChecklistItem(isChecked: true, nameItem: "To do", remindMe: false)])
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath) as! GroupTableViewCell
        let group = groups[indexPath.row]
        cell.groupTitleLabel.text = group.title
        cell.imageView?.image = UIImage(named: (group.imageName))
        cell.subtitle?.text = group.getRemainings()
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MainToGroupDetails",
        let vc = segue.destination as? GroupDetailsTableViewController,
        let indexPath = tableView.indexPathForSelectedRow {
            vc.items = groups[indexPath.row].items
            }
        
        
    }
}
