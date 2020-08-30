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
    
    let storyboard = UIStoryboard(name: "PlayerOne", bundle: nil)
    
    func test_playerOneStoryboardInitialViewController_isPlayerScoreViewController() {
        XCTAssertTrue(storyboard.instantiateInitialViewController() is PlayerScoreViewController)
    }
    
    func test_playerOneStoryboard_nameSetter_updatesNameLabel() {
        let vc = makePlayerScoreViewController()
        
        let name = "Test"
        vc.name = name
        
        XCTAssertTrue(vc.nameLabel?.text == name, "Expected name \(name) got \(vc.name!)")
    }
    
    func test_playerOneStoryboard_scoreSetter_updatesScoreLabel() {
         let vc = makePlayerScoreViewController()
         
         let score = "a score"
         vc.score = name
         
        XCTAssertTrue(vc.scoreLabel?.text == name, "Expected name \(score) got \(String(describing: vc.scoreLabel?.text))")
     }
    
    // MARK: - Helpers
    private func makePlayerScoreViewController() -> PlayerScoreViewController {
        let vc = storyboard.instantiateInitialViewController() as! PlayerScoreViewController
        _ = vc.view
        return vc
    }
}
