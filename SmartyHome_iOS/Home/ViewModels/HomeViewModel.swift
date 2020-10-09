//
//  HomeViewModel.swift
//  SmartyHome_iOS
//
//  Created by khaoula hafsia on 10/9/20.
//  Copyright © 2020 Think-it. All rights reserved.
//

import Foundation

class HomeViewModel {
    
    var rooms: [Room] = [Room]()
    private var userName: String = ""
    
   func getUserName() -> String{
        if let name = UserDefaults.standard.string(forKey: "userName"){
            userName = name
            return name
        }else{
            return ""
        }
    }
    
    init() {
        let room = Room(roomName: "Living Room", numberDevices: 4, roomImageName: "livingroom")
        rooms.append(room)
        
        let room1 = Room(roomName: "Media Room", numberDevices: 6, roomImageName: "mediaroom")
        rooms.append(room1)
        
        let room2 = Room(roomName: "Bathroom", numberDevices: 1, roomImageName: "bathroom")
        rooms.append(room2)
        
        let room3 = Room(roomName: "Bedroom", numberDevices: 3, roomImageName: "bedroom")
        rooms.append(room3)
        
    }
}
