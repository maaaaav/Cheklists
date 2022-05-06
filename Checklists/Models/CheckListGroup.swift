//
//  CheckListGroup.swift
//  Checklists
//
//  Created by ASDiMac2 on 4/20/22.
//

import Foundation

struct CheckListGroup{
    let title: String
    let imageName: String
    var items:[ChecklistItem]
    
    func  getRemainings()-> String {
        //1.All done
        var isAllDone = true
        for item in items {
            if item.isChecked == false{
                isAllDone = false
            }
        }
        if items.isEmpty{
            return "(No items)"
        }else if !isAllDone, items.count != 0{
            return"\(items.count)  Remaining"
        }else{
            if isAllDone{
            return "All Done"
        }else{
            return "incorrect data"
        }
        }
        }
    }

