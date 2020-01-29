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
    
    var win = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray5
        loadView()
        buttonsConfiguration()
        mainView.stackView.isUserInteractionEnabled = true
    }
    
    //put function to load
    private func buttonsConfiguration() {
        for button in mainView.buttonArr {
            button.addTarget(self, action: #selector(buttonColorChoice(_:)), for: .touchUpInside)
        }
        print("button pressed")
    }
    
    /*
     private func updateAppColor() {
     if let colorName = UserDefaults.standard.object(forKey: AppKey.appColorKey) as? String {
     view.backgroundColor = UIColor(named: colorName)
     }
     }
     */
    
    
    @objc private func buttonColorChoice(_ sender: UIButton){
        buttonsConfiguration()
        let alertController = UIAlertController(title: "You lost!", message: "Would you like to play again?", preferredStyle: .alert)
        let playAgain = UIAlertAction(title: "Yes", style: .default) { (alertAction) in
            self.resetAction()
        }
        let leaveGame = UIAlertAction(title: "No", style: .default) { (alertAction) in
            self.leave()
            self.mainView.imageView.backgroundColor = .black
        }
        alertController.addAction(playAgain)
        alertController.addAction(leaveGame)
        
        switch sender.tag{
        case 0:
            if max(mainView.randomRed, mainView.randomBlue, mainView.randomGreen) == mainView.randomRed{
                print("red")
                updateScore()
                win = true
            } else {
                present(alertController, animated: true)
            }
        case 1:
            if max(mainView.randomRed, mainView.randomBlue, mainView.randomGreen) == mainView.randomGreen {
                print("green")
                updateScore()
                win = true
            } else {
                present(alertController, animated: true)
            }
        case 2:
            if max(mainView.randomRed, mainView.randomBlue, mainView.randomGreen) == mainView.randomBlue {
                print("blue")
                updateScore()
                win = true
            } else {
                present(alertController, animated: true)
            }
        default:
            print("no way")
        }
        
        mainView.imageView.backgroundColor = mainView.myColor()
        
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
    
    private func leave() {
        for button in mainView.buttonArr {
            button.isEnabled = false
            button.titleLabel?.text = ""
        }
    }
    
    
    private func updateScore() {
        mainView.scoreNum += 1
        mainView.scoreLabel.text = "Score: \(mainView.scoreNum)"
    }
    
}

