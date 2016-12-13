//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Developer on 26/10/2016.
//  Copyright © 2016 Hyungsuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game: Game?
    
    var gameScore: Int?
    
    
    @IBAction func None(_ sender: UIButton) {
        
    }
    
   
    @IBAction func Fizz(_ sender: UIButton) {
    }
    
    

    @IBAction func Buzz(_ sender: UIButton) {
    }
    

    @IBAction func FizzBuzz(_ sender: UIButton) {
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
    
    func play(move: String) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.play(move: move)
        gameScore = response.score
        
    }


}

