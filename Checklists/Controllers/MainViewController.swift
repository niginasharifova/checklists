//
//  ViewController.swift
//  Checklists
//
//  Created by beehive-iOS on 4/15/22.
//

import UIKit

class MainViewController: UITableViewController, GroupDetailsProtocol {
    func didDeleteItem(at index: Int, with groupTitle: String) {
        for (groupIndex, group) in groups.enumerated() {
            if group.title == groupTitle {
                groups[groupIndex].items.remove(at: index)
                tableView.reloadData()
            }
        }
    }
    
    
    // MARK: - data layer
    
    var groups: [ChecklistGroup] = [
        ChecklistGroup(title: "Birthdays", imageName: "Birthdays", items: [ChecklistItem(isChecked: true, nameItem: "BD", remindMe: false, dueDate: nil)]),
        ChecklistGroup(title: "Business Stuff", imageName: "Folder", items: [ChecklistItem(isChecked: true, nameItem: "BS", remindMe: true, dueDate: Date())]),
        ChecklistGroup(title: "Chores", imageName: "Chores", items: []),
        ChecklistGroup(title: "Groceries", imageName: "Groceries", items: [ChecklistItem(isChecked: false, nameItem: "Groceries", remindMe: true, dueDate: Date())]),
        ChecklistGroup(title: "To Do", imageName: "Inbox", items: [ChecklistItem(isChecked: true, nameItem: "To do", remindMe: false)])
    ]

    // MARK: - ViewController's lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - UITableView lifecycle
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
    // MARK: - обработка перехода
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MainToGroupDetails",
        let vc = segue.destination as? GroupDetailsTableViewController,
        let indexPath = tableView.indexPathForSelectedRow {
            vc.title = groups[indexPath.row].title
            vc.group = groups[indexPath.row]
            vc.delegate = self
            }
    }
}
