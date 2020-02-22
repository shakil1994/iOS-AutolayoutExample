//
//  ViewController.swift
//  AutoLayout1
//
//  Created by Md Kamrul Hasan on 20/2/20.
//  Copyright © 2020 Md Kamrul Hasan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let redView: UIView = UIView.makeView(color: .red)
    let greenView: UIView = UIView.makeView(color: .green)
    let purpleView: UIView = UIView.makeView(color: .purple)
    let yellowView: UIView = UIView.makeView(color: .yellow)
    let orangeView: UIView = UIView.makeView(color: .orange)
    let blueView: UIView = UIView.makeView(color: .blue)
    let darkGrayView: UIView = UIView.makeView(color: .darkGray)
    let blackView: UIView = UIView.makeView(color: .black)
    let brownView: UIView = UIView.makeView(color: .brown)
    
    
    
    let paddingTopBottom: CGFloat = 50.0
    let paddingLeftRight: CGFloat = 20.0
    
    let spaceing: CGFloat = 10.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setup()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let redRedius = self.redView.bounds.width / 20
        self.redView.layer.cornerRadius = redRedius
        
        let greenRedius = self.greenView.bounds.width / 20
        self.greenView.layer.cornerRadius = greenRedius
        
        let purpleRedius = self.purpleView.bounds.width / 20
        self.purpleView.layer.cornerRadius = purpleRedius
        
        let yellowRedius = self.yellowView.bounds.width / 20
        self.yellowView.layer.cornerRadius = yellowRedius
        
        let orangeRedius = self.orangeView.bounds.width / 20
        self.orangeView.layer.cornerRadius = orangeRedius
        
        let blueRedius = self.blueView.bounds.width / 20
        self.blueView.layer.cornerRadius = blueRedius
        
        let darkGrayRedius = self.darkGrayView.bounds.width / 30
        self.darkGrayView.layer.cornerRadius = darkGrayRedius
        
        let blackRedius = self.blackView.bounds.width / 20
        self.blackView.layer.cornerRadius = blackRedius
        
        let brownRedius = self.brownView.bounds.width / 20
        self.brownView.layer.cornerRadius = brownRedius
        
    }
    
    private func setup(){
        view.addSubview(redView)
        view.addSubview(greenView)
        view.addSubview(purpleView)
        view.addSubview(yellowView)
        view.addSubview(orangeView)
        view.addSubview(blueView)
        view.addSubview(darkGrayView)
        view.addSubview(blackView)
        view.addSubview(brownView)
        
        NSLayoutConstraint.activate([
            redView.topAnchor.constraint(equalTo: view.topAnchor, constant: paddingTopBottom),
            redView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: paddingLeftRight),
            greenView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: spaceing),
            
            
            greenView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: paddingLeftRight),
            
            greenView.heightAnchor.constraint(equalTo: redView.heightAnchor),
            
            
            view.trailingAnchor.constraint(equalTo: purpleView.trailingAnchor, constant: paddingLeftRight),
            purpleView.topAnchor.constraint(equalTo: view.topAnchor, constant: paddingTopBottom),
            purpleView.leadingAnchor.constraint(equalTo: redView.trailingAnchor, constant: spaceing),
            purpleView.widthAnchor.constraint(equalTo: redView.widthAnchor),
            
            view.trailingAnchor.constraint(equalTo: yellowView.trailingAnchor, constant: paddingLeftRight),
            
            yellowView.leadingAnchor.constraint(equalTo: greenView.trailingAnchor, constant: spaceing),
            yellowView.topAnchor.constraint(equalTo: purpleView.bottomAnchor, constant: spaceing),
            
            yellowView.heightAnchor.constraint(equalTo: purpleView.heightAnchor),
            
            yellowView.widthAnchor.constraint(equalTo: greenView.widthAnchor),
            
            orangeView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: paddingLeftRight),
            //view.bottomAnchor.constraint(equalTo: orangeView.bottomAnchor, constant: paddingTopBottom),
            
            orangeView.topAnchor.constraint(equalTo: greenView.bottomAnchor, constant: spaceing),
            
            blueView.leadingAnchor.constraint(equalTo: orangeView.trailingAnchor, constant: spaceing),
            
            orangeView.heightAnchor.constraint(equalTo: greenView.heightAnchor),
            
            view.trailingAnchor.constraint(equalTo: blueView.trailingAnchor, constant: paddingLeftRight),
            //view.bottomAnchor.constraint(equalTo: blueView.bottomAnchor, constant: paddingTopBottom),
            
            blueView.topAnchor.constraint(equalTo: yellowView.bottomAnchor, constant: spaceing),
            
            blueView.heightAnchor.constraint(equalTo: yellowView.heightAnchor),
            blueView.widthAnchor.constraint(equalTo: orangeView.widthAnchor),
            
            darkGrayView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: paddingLeftRight),
            view.trailingAnchor.constraint(equalTo: darkGrayView.trailingAnchor, constant: paddingLeftRight),
            //view.bottomAnchor.constraint(equalTo: darkGrayView.bottomAnchor, constant: paddingTopBottom),
            darkGrayView.topAnchor.constraint(equalTo: orangeView.bottomAnchor, constant: spaceing),
            darkGrayView.topAnchor.constraint(equalTo: blueView.bottomAnchor, constant: spaceing),
            darkGrayView.heightAnchor.constraint(equalTo: orangeView.heightAnchor),
            
            blackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: paddingLeftRight),
            view.bottomAnchor.constraint(equalTo: blackView.bottomAnchor, constant: paddingTopBottom),
            blackView.topAnchor.constraint(equalTo: darkGrayView.bottomAnchor, constant: spaceing),
            blackView.heightAnchor.constraint(equalTo: darkGrayView.heightAnchor),
            
            view.trailingAnchor.constraint(equalTo: brownView.trailingAnchor, constant: paddingLeftRight),
            view.bottomAnchor.constraint(equalTo: brownView.bottomAnchor, constant: paddingTopBottom),
            brownView.leadingAnchor.constraint(equalTo: blackView.trailingAnchor, constant: spaceing),
            brownView.topAnchor.constraint(equalTo: darkGrayView.bottomAnchor, constant: spaceing),
            brownView.heightAnchor.constraint(equalTo: darkGrayView.heightAnchor),
            brownView.widthAnchor.constraint(equalTo: blackView.widthAnchor)
            
            ])
    }
    
}

