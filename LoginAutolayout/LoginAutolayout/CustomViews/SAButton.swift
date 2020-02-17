//
//  SAButton.swift
//  LoginAutolayout
//
//  Created by Md Kamrul Hasan on 17/2/20.
//  Copyright © 2020 Md Kamrul Hasan. All rights reserved.
//

import UIKit

class SAButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    private func setupButton(){
        backgroundColor = Colors.tropicBlue
        titleLabel?.font = UIFont(name: Fonts.avenirNextCondensedDemiBold, size: 22)
        layer.cornerRadius = frame.size.height/2
        setTitleColor(.white, for: .normal)
    }
    
}
