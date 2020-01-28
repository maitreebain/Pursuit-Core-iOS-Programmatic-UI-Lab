//
//  MainView.swift
//  ProgrammaticUI-Color-Guess
//
//  Created by Maitree Bain on 1/28/20.
//  Copyright © 2020 Maitree Bain. All rights reserved.
//

import UIKit

class MainView: UIView {
    
    public lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = myColor()
        return image
    }()
    
    
    
    override init(frame: CGRect){
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        
    }
    
    var randomRed = CGFloat.random(in: 0...1)
    var randomBlue = CGFloat.random(in: 0...1)
    var randomGreen = CGFloat.random(in: 0...1)
    
    func myColor() -> UIColor {
        randomRed = CGFloat.random(in: 0...1)
        randomBlue = CGFloat.random(in: 0...1)
        randomGreen = CGFloat.random(in: 0...1)
        let randomColor = UIColor.init(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1)
        return randomColor
    }
    
    private func setUpImageViewConstraints() {
        
    }
    
    private func setUpStackViewConstraints() {
        
    }
    
    private func setUpLabelConstraints() {
        
    }
    
    private func setUpScoreLabelConstraints() {
        
    }
    
}
