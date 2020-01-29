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
        buttonsConfiguration()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray5
        loadView()
        
    }
    
    //put function to load
    private func buttonsConfiguration() {
        mainView.redButton.addTarget(self, action: #selector(buttonColorChoice(_:)), for: .touchUpInside)
        mainView.greenButton.addTarget(self, action: #selector(buttonColorChoice(_:)), for: .touchUpInside)
        mainView.blueButton.addTarget(self, action: #selector(buttonColorChoice(_:)), for: .touchUpInside)
    }
    
    
    @objc private func buttonColorChoice(_ sender: UIButton){
        buttonsConfiguration()
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .alert)
        let winAlert = UIAlertAction(title: "You win!", style: .default) { (alertAction) in
            self.resetAction()
        }
        let loseAlert = UIAlertAction(title: "You lose!", style: .default) { (alertAction) in
            self.resetAction()
        }
        alertController.addAction(winAlert)
        alertController.addAction(loseAlert)
        
        switch sender.tag{
        case 0:
            if max(mainView.randomRed, mainView.randomBlue, mainView.randomGreen) == mainView.randomRed{
                print("red")
                
            }
        case 1:
            if max(mainView.randomRed, mainView.randomBlue, mainView.randomGreen) == mainView.randomGreen {
                print("green")
            }
        case 2:
            if max(mainView.randomRed, mainView.randomBlue, mainView.randomGreen) == mainView.randomBlue {
                print("blue")
            }
        default:
            print("no way")
            /*
             maxScore = score
             highScore.text = "High Score: \(maxScore)"
             if maxScore > score {
             highScore.text = "High Score: \(maxScore)"
             } else if score > maxScore {
             maxScore = score
             }
             */
        }
    }
    
    
    private func resetAction() {
        
    }
    
}

