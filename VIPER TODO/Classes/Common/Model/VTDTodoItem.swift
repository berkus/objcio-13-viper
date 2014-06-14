//
//  VTDTodoItem.swift
//  VIPER TODO
//
//  Created by Berkus on 11/06/14.
//  Copyright (c) 2014 Mutual Mobile. All rights reserved.
//

import Foundation

class VTDTodoItem
{
    var dueDate: NSDate
    var name: String
    
    init(dueDate: NSDate, name: String) {
        self.dueDate = dueDate
        self.name = name
    }
}
