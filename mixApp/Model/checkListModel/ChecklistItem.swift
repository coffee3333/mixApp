//
//  ChecklistItem.swift
//  mixApp
//
//  Created by Atay on 10/23/20.
//

import Foundation

class ChecklistItem: NSObject {
  
    var text = ""
    var desc = ""
    var checked = false
  
    func toggleChecked() {
        checked = !checked
    }
}


