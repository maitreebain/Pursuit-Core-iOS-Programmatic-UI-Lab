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
        for button in mainView.buttonArr {
            button.addTarget(self, action: #selector(buttonColorChoice(_:)), for: .touchUpInside)
        }
    }
    
    
    @objc private func buttonColorChoice(_ sender: UIButton){
        buttonsConfiguration()
        let alertController = UIAlertController(title: "You lost!", message: "Would you like to play again?", preferredStyle: .alert)
        let playAgain = UIAlertAction(title: "Yes", style: .default) { (alertAction) in
            self.resetAction()
        }
        let leaveGame = UIAlertAction(title: "No", style: .cancel)
        alertController.addAction(playAgain)
        alertController.addAction(leaveGame)
        
        switch sender.tag{
        case 0:
            if max(mainView.randomRed, mainView.randomBlue, mainView.randomGreen) == mainView.randomRed{
                print("red")
                mainView.scoreNum += 1
            } else {
                present(alertController, animated: true)
            }
        case 1:
            if max(mainView.randomRed, mainView.randomBlue, mainView.randomGreen) == mainView.randomGreen {
                print("green")
                mainView.scoreNum += 1
            } else {
                           present(alertController, animated: true)
                       }
        case 2:
            if max(mainView.randomRed, mainView.randomBlue, mainView.randomGreen) == mainView.randomBlue {
                print("blue")
                mainView.scoreNum += 1
            } else {
                           present(alertController, animated: true)
                       }
        default:
            print("no way")
        }
        
        for button in mainView.buttonArr{
            button.isEnabled = false
        }
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
    
    
    private func resetAction() {
        
    }
    
}

