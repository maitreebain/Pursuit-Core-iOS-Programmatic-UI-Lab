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
    
    
    private func setUpImageViewConstraints() {
        
    }
    
    private func setUpStackViewConstraints() {
        
    }
    
    private func setUpLabelConstraints() {
        
    }
    
    private func setUpScoreLabelConstraints() {
        
    }

}
