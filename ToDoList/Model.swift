//
//  Model.swift
//  ToDoList
//
//  Created by leomac on 24.02.2021.
//

import Foundation

var toDoItems: [[String:Any]] {
    set {
        UserDefaults.standard.set(newValue, forKey: "toDoItemsKey")
        UserDefaults.standard.synchronize()
    }
    get {
        if let array = UserDefaults.standard.array(forKey: "toDoItemsKey") as? [[String: Any]] {
            return array
        } else {
            return []
        }
    }
}

func addItem(nameItem: String, isCompleted: Bool = false) {
    toDoItems.append(["Name": nameItem, "isCompleted": isCompleted])
}

func removeItem(at Index: Int) {
    toDoItems.remove(at: Index)
}

func changeState(at item: Int) -> Bool{
    toDoItems[item]["isCompleted"] = !(toDoItems[item]["isCompleted"] as? Bool ?? true)
    return toDoItems[item]["isCompleted"] as? Bool ?? true
}



