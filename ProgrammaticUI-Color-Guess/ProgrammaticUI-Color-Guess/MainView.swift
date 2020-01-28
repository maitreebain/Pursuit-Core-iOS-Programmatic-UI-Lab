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
    
    public lazy var promptLabel: UILabel = {
        let prompt = UILabel()
        prompt.text = gamePrompt
        return prompt
    }()
    
    public lazy var scoreLabel: UILabel = {
        let score = UILabel()
        score.text = "\(scoreNum)"
        score.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        return score
    }()
    
    
    public lazy var stackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: buttonsLoad())
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.alignment = .fill
        stack.spacing = 20
        return stack
    }()
    
    public lazy var resetButton: UIButton = {
        let button = UIButton()
        button.setTitle("Reset", for: .normal)
        button.backgroundColor = .systemRed
        return button
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
        
        setUpImageViewConstraints()
        setUpPromptConstraints()
        setUpStackViewConstraints()
        setUpScoreLabelConstraints()
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
        redButton.setTitle("Red", for: .normal)
        greenButton.backgroundColor = UIColor(red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0)
        greenButton.setTitle("Green", for: .normal)
        blueButton.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
        blueButton.setTitle("Blue", for: .normal)
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
    
    private func setUpPromptConstraints() {
        addSubview(promptLabel)
        
        promptLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            promptLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20),
            promptLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            promptLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    
    private func setUpStackViewConstraints() {
        addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: promptLabel.bottomAnchor, constant: 40),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            stackView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.1)
        ])
    }
    
    private func setUpScoreLabelConstraints() {
        
    }
    
}
