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

    
    func testOnPlayScoreIncremented() {
        game.score = 2
        let response = game.play(move: Move.Buzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveIsRight() {
        game.score = 2
        let response = game.play(move: Move.Fizz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveIsWrong() {
        game.score = 1
        let response = game.play(move: Move.Fizz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfBuzzMoveRight() {
        game.score = 4
        let response = game.play(move: Move.Buzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfBuzzMoveWrong() {
        game.score = 1
        let response = game.play(move: Move.Buzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfFizzBuzzMoveRight() {
        game.score = 14
        let response = game.play(move: Move.FizzBuzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfNumberMoveRight() {
        game.score = 1
        let response = game.play(move: Move.Number)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfNumberMoveWrong() {
        game.score = 2
        let response = game.play(move: Move.Number)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        game.play(move: Move.Fizz)
        XCTAssertEqual(game.score, 1)
    }
    
    func testPlayShouldReturnIfMoveRight(){
        let response = game.play(move: Move.Number)
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.play(move: Move.Number)
        XCTAssertNotNil(response.score)
    }
    
    func testOnMoveFizz(){
        game.score = 1
        let response = game.play(move: Move.Fizz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testOnMoveFizzBuzz() {
        game.score = 3
        let response = game.play(move: Move.FizzBuzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testOnMoveNumber() {
        game.score = 1
        let response = game.play(move: Move.Number)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
//    func testPlayShouldReturnIfMoveRight() {
//        let response = game.play(move: Move.Number)
//        XCTAssertNotNil(response.right)
//    }
//    
//    func testPlayShouldReturnNewScore() {
//        let response = game.play(move: Move.Number)
//        XCTAssertNotNil(response.score)
//    } 
    
}
