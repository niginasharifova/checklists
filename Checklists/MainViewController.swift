//
//  ViewController.swift
//  Checklists
//
//  Created by beehive-iOS on 4/15/22.
//

import UIKit

class MainViewController: UITableViewController {
    
    let groups: [ChecklistGroup] = [
        ChecklistGroup(title: "Birthdays", imageName: "Birthdays", subtitle: "All done"),
        ChecklistGroup(title: "Business Stuff", imageName: "Folder", subtitle: "No items"),
        ChecklistGroup(title: "Chores", imageName: "Chores", subtitle: "2 remaining"),
        ChecklistGroup(title: "Groceries", imageName: "Groceries", subtitle: "2 remaining"),
        ChecklistGroup(title: "To Do", imageName: "Inbox", subtitle: "3 remaining")
        
        
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath)
        let group: ChecklistGroup = groups[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell") as! GroupTableViewCell
        cell.groupTitleLabel.text = group.title
        cell.imageView?.image = UIImage(named: (group.imageName))
        cell.subtitle?.text = group.subtitle
        return cell
    }
}
