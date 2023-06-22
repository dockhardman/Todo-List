//
//  Item.swift
//  Todo List
//
//  Created by Allen Chou on 2023/6/22.
//

import Foundation


struct Item: Identifiable {
    let id = UUID()
    var todo: String
}
