//
//  DataModel.swift
//  TodoApp
//
//  Created by Abhishesh Pradhan on 27/4/18.
//  Copyright © 2018 Abhishesh Pradhan. All rights reserved.
//

import Foundation

struct TodoItem: Codable {
    
    var title: String
    var completed: Bool
    var createdAt: Date
    var itemIdentifier: UUID
    
    func saveItem(){
        DataManager.save(self, with: itemIdentifier.uuidString)
    }
    
    func deleteItem(){
        DataManager.delete(itemIdentifier.uuidString)
    }
    
    mutating func markCompleted(){
        self.completed = true
        DataManager.save(self, with: itemIdentifier.uuidString)
    }
}
