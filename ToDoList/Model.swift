//
//  Model.swift
//  ToDoList
//
//  Created by leomac on 24.02.2021.
//

import Foundation

var toDoItems: [String] = ["Позвонить маме", "Написать программу"]

func addItem(nameItem: String) {
    toDoItems.append(nameItem)
    saveData()
}

func removeItem(at Index: Int) {
    toDoItems.remove(at: Index)
    saveData()
}

func saveData() {
    
}

func loadData() {
    
}
 

