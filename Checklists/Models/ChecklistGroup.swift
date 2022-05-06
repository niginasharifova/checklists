//
//  ChecklistGroup.swift
//  Checklists
//
//  Created by beehive-iOS on 4/18/22.
//

import Foundation

struct ChecklistGroup {
    var title: String
    var imageName: String
//    var subtitle: String
    var items: [ChecklistItem]
    
    func getRemainings () -> String {
        var isAllDone = true
        for item in items {
            if item.isChecked == false {
                isAllDone = false
            }
        }
        if items.isEmpty {
            return "(no items)"
        } else if !isAllDone, items.count != 0 {
            return "\(items.count) remaining"
        }
        if isAllDone {
            return "All done"
        } else {
            return "Incorrect data"
        }
    }

    
    // 1. all done
    // 2. remains
    // 3. no items
//    func remaining() -> String {
//        let countRemainings = imageName.count
//        if countRemainings == 0 {
//            subtitle = "All done"
//        }
//        if countRemainings > 0 {
//            subtitle = "\(countRemainings) remainings"
//        }
//        if countRemainings.
//        return subtitle
//    }
}
