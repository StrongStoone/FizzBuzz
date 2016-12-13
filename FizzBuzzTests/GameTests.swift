//
//  GamesTest.swift
//  FizzBuzz
//
//  Created by Developer on 26/10/2016.
//  Copyright © 2016 Hyungsuk. All rights reserved.
//

import XCTest
import Foundation
@testable import FizzBuzz

class GameTests: XCTestCase {
    let game = Game()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }
    
    func testIsDivisibleByThree() {
        let brain = Brain()
        let result = brain.isDivisibleByThree(number: 3)
        XCTAssertEqual(result, true)
    }
    
    func testOnPlayScoreIncremented() {
        game.score = 2
        let response = game.play(move: "Buzz")
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testOnMoveFizz(){
        game.score = 1
        let response = game.play(move: "Fizz")
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testOnMoveNumber() {
        game.score = 1
        let response = game.play(move: "\(game.score+1)")
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testPlayShouldReturnIfMoveRight() {
        let response = game.play(move: "1")
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.play(move: "1")
        XCTAssertNotNil(response.score)
    } 
    
}
