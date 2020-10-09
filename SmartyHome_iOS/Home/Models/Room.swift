//
//  Room.swift
//  SmartyHome_iOS
//
//  Created by khaoula hafsia on 10/9/20.
//  Copyright © 2020 Think-it. All rights reserved.
//

import Foundation

class Room {
    
    var roomName: String
    var numberDevices: Int
    var roomImageName: String
    
    init(roomName: String, numberDevices: Int, roomImageName: String) {
        self.roomName = roomName
        self.numberDevices = numberDevices
        self.roomImageName = roomImageName
    }
}
