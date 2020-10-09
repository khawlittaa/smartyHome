//
//  RoomTableViewCell.swift
//  SmartyHome_iOS
//
//  Created by khaoula hafsia on 10/9/20.
//  Copyright © 2020 Think-it. All rights reserved.
//

import UIKit

class RoomTableViewCell: UITableViewCell {
    @IBOutlet weak var roomNameLabel: UILabel!
    @IBOutlet weak var numberDevicesLabel: UILabel!
    
    @IBOutlet weak var roomImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setImageCorner()
    }

    func setCellDate(room: Room){
        self.roomNameLabel.text = room.roomName
        self.roomImageView.image = UIImage(named: room.roomImageName)
        self.numberDevicesLabel.text = "\(room.numberDevices) devices"
    }
    
    func setImageCorner(){
        roomImageView.layer.cornerRadius = 12
        roomImageView.clipsToBounds = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
