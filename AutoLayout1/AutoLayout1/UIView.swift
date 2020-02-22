//
//  UIView.swift
//  AutoLayout1
//
//  Created by Md Kamrul Hasan on 22/2/20.
//  Copyright © 2020 Md Kamrul Hasan. All rights reserved.
//

import UIKit

extension UIView {
    static func makeView(color: UIColor) -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = color
        return view
    }
}
