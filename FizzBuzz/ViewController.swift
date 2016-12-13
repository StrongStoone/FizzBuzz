//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Developer on 26/10/2016.
//  Copyright © 2016 Hyungsuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        switch sender{
        case numberButton:
            play(move: Move.Number)
        case fizzButton:
            play(move: Move.Fizz)
        case buzzButton:
            play(move: Move.Buzz)
        case fizzBuzzButton:
            play(move: Move.FizzBuzz)
        default:
            print("Invalid selection")
            
        }
    }
    
    var game: Game?
    
    var gameScore: Int? {
        didSet {
            guard let unwrappedScore = gameScore else {
                print("gameScore is nil")
                return
            }
            numberButton.setTitle("\(unwrappedScore )", for: .normal)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        game = Game()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    func play(move: Move) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.play(move: move)
        gameScore = response.score
        
    }
    
    
    



}

