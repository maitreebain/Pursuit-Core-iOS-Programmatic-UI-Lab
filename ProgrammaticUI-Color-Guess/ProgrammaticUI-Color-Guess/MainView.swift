//
//  MainView.swift
//  ProgrammaticUI-Color-Guess
//
//  Created by Maitree Bain on 1/28/20.
//  Copyright © 2020 Maitree Bain. All rights reserved.
//

import UIKit

class MainView: UIView {
    
    let gamePrompt = "Pick a color most related to the options below: "
    var scoreNum = 0
    
    public lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = myColor()
        return image
    }()
    
    public lazy var scoreLabel: UILabel = {
        let score = UILabel()
        score.text = "\(scoreNum)"
        score.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        return score
    }()
    
    public lazy var promptLabel: UILabel =  {
    let prompt = UILabel()
        prompt.text = gamePrompt
        return prompt
    }()
    
    public lazy var stackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: buttonsLoad())
        return stack
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
        
        setUpLabelConstraints()
        setUpImageViewConstraints()
        setUpScoreLabelConstraints()
        setUpStackViewConstraints()
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
    
    func buttonsLoad() -> [UIButton] {
        var buttonArr = [UIButton]()
        let redButton = UIButton()
        let greenButton = UIButton()
        let blueButton = UIButton()
        redButton.backgroundColor = UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
        greenButton.backgroundColor = UIColor(red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0)
        blueButton.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
        buttonArr.append(redButton)
        buttonArr.append(greenButton)
        buttonArr.append(blueButton)
        return buttonArr
    }
    
    private func setUpImageViewConstraints() {
        addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            imageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.4)
        ])
    }
    
    private func setUpStackViewConstraints() {
        
    }
    
    private func setUpLabelConstraints() {
        
    }
    
    private func setUpScoreLabelConstraints() {
        
    }
    
}
