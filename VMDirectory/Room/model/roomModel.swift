//
//  roomModel.swift
//  VMDirectory
//
//  Created by Sathish on 29/10/22.
//

import Foundation

struct roomData:Codable{
    var createdAt: String
    var isOccupied: Bool
    var maxOccupancy: Int
    var id: String
    
}
