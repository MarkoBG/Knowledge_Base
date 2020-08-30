//
//  PlayerScoreViewControllerStoryboardTests.swift
//  VCCompositionWithStoryboardsTests
//
//  Created by Marko Tribl on 8/30/20.
//  Copyright © 2020 Marko Tribl. All rights reserved.
//

import XCTest
@testable import VCCompositionWithStoryboards

class PlayerScoreViewControllerStoryboardTests: XCTestCase {
    
    func test_playerOneStoryboardInitialViewController_isPlayerScoreViewController() {
        let storyboard = UIStoryboard(name: "PlayerOne", bundle: nil)
        XCTAssertTrue(storyboard.instantiateInitialViewController() is PlayerScoreViewController)
    }
    
    func test_playerOneStoryboard_nameSetter_updatesNameLabel() {
        let storyboard = UIStoryboard(name: "PlayerOne", bundle: nil)
        let vc = storyboard.instantiateInitialViewController() as! PlayerScoreViewController
        _ = vc.view
        
        let name = "Test"
        vc.name = name
        
        XCTAssertTrue(vc.nameLabel?.text == name, "Expected name \(name) got \(vc.name!)")
    }
    
    func test_playerOneStoryboard_scoreSetter_updatesScoreLabel() {
         let storyboard = UIStoryboard(name: "PlayerOne", bundle: nil)
         let vc = storyboard.instantiateInitialViewController() as! PlayerScoreViewController
         _ = vc.view
         
         let score = "a score"
         vc.score = name
         
        XCTAssertTrue(vc.scoreLabel?.text == name, "Expected name \(score) got \(String(describing: vc.scoreLabel?.text))")
     }
}
