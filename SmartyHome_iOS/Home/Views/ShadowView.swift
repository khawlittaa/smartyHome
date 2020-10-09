//
//  ShadowView.swift
//  SmartyHome_iOS
//
//  Created by khaoula hafsia on 10/9/20.
//  Copyright © 2020 Think-it. All rights reserved.
//

import UIKit

class ShadowView: UIView {
    
    var setupShadowDone: Bool = false
    
    override func layoutSubviews() {
        super.layoutSubviews()
        print("Layout subviews!")
        setupShadow()
    }

    private func setupShadow() {
        if setupShadowDone { return }
                print("Setup shadow!")
                self.layer.cornerRadius = 12
                self.layer.shadowOffset = CGSize(width: 0, height: 2)
                self.layer.shadowRadius = 3
                self.layer.shadowOpacity = 0.8
                self.layer.shadowColor = UIColor.darkGray.cgColor
                self.layer.shouldRasterize = true
                self.layer.rasterizationScale = UIScreen.main.scale
            
                setupShadowDone = true
    }
}


