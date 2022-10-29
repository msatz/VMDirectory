//
//  roomCellViewModel.swift
//  VMDirectory
//
//  Created by Sathish on 29/10/22.
//

import Foundation

class roomCellViewModel{
    private var room : roomData
    
    init(room: roomData){
        self.room = room
    }
    
    public var getRoomOccupencyCount: String{
        return "\(room.maxOccupancy)"
    }
    
    public var getRoomOccupied: Bool{
        return room.isOccupied
    }
    
}
