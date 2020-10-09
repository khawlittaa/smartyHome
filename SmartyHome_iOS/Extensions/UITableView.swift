//
//  UITableView.swift
//  SmartyHome_iOS
//
//  Created by khaoula hafsia on 10/9/20.
//  Copyright © 2020 Think-it. All rights reserved.
//

import UIKit

extension UITableView{
    
    func registerCell(nib: String, cellreuseIdentifier: String) {
        let  basicInfoCell = UINib(nibName: nib, bundle: nil)
        self.register(basicInfoCell, forCellReuseIdentifier: cellreuseIdentifier)
    }
    
}
