//
//  Users.swift
//  ToDoList
//
//  Created by Emmanuel Martinez on 9/6/24.
//

import Foundation


struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
