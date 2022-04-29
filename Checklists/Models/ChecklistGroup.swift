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
    var subtitle: String
    var items: [ChecklistItem]

    
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
