//
//  Helper.swift
//  SmartyHome_iOS
//
//  Created by khaoula hafsia on 10/9/20.
//  Copyright © 2020 Think-it. All rights reserved.
//

import UIKit

let main = UIStoryboard(name: "Main", bundle: nil)
let home = UIStoryboard(name: "Home", bundle: nil)

func getCurrentDate() -> String{
    let now = Date()
    let formatter = DateFormatter()
    formatter.dateStyle = .long
    let date = formatter.string(from: now)
    return date
}
