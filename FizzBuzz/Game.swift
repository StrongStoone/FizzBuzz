//
//  Game.swift
//  FizzBuzz
//
//  Created by Developer on 26/10/2016.
//  Copyright © 2016 Hyungsuk. All rights reserved.
//

import Foundation


class Game:  NSObject {
    var score: Int
    let brain: Brain
    
    override init() {
        score = 0
        brain = Brain()
        super.init()
    }
    
    
    
    func play(move: String) -> Bool{
        let result = brain.check(number: score)
        if(result == move){
            score += 1
            return true
        } else {
            return false
        }
    }
}
