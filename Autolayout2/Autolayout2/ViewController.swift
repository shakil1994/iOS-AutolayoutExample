//
//  ViewController.swift
//  Autolayout2
//
//  Created by DhakaLive on 2/23/20.
//  Copyright © 2020 DhakaLive. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var blackView: UIView!
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var lightGrayView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let blackRedius = self.blackView.bounds.width / 20
        self.blackView.layer.cornerRadius = blackRedius
        
        let redRedius = self.redView.bounds.width / 20
        self.redView.layer.cornerRadius = redRedius
        
        let yellowRedius = self.yellowView.bounds.width / 20
        self.yellowView.layer.cornerRadius = yellowRedius
        
        let lightGrayRedius = self.lightGrayView.bounds.width / 20
        self.lightGrayView.layer.cornerRadius = lightGrayRedius
        
    }


}

