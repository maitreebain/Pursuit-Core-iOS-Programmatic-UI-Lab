//
//  ViewController.swift
//  ProgrammaticUI-Color-Guess
//
//  Created by Maitree Bain on 1/28/20.
//  Copyright © 2020 Maitree Bain. All rights reserved.
//

import UIKit

class MainsViewController: UIViewController {
    
    private let mainView = MainView()
    
    override func loadView() {
        view = mainView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray5
        loadView()
        
    }
    
   @objc private func buttonColorChoice(_ sender: UIButton){
        
    
    switch sender.tag{
        case 0:
            if max(mainView.randomRed, mainView.randomBlue, mainView.randomGreen) == mainView.randomRed{
                
        }
        /*{
            textPrompt.text = "Correct!"
            colorPrompt.backgroundColor = myColor()
            score += 1
            nowScore = score
            currentScore.text = "Current Score: \(nowScore)"
        }*/
        default:
            print("no way")
        }
    }


}

