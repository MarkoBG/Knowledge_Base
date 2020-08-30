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
    
    // MARK: - PlayerOne Storyboard
    
    func test_playerOneStoryboardInitialViewController_isPlayerScoreViewController() {
        XCTAssertTrue(makePlayerOneStoryboard().instantiateInitialViewController() is PlayerScoreViewController)
    }
    
    func test_playerOneStoryboard_nameSetter_updatesNameLabel() {
        let vc = makePlayerScoreViewController(storyboard: makePlayerOneStoryboard())
        
        let name = "Test"
        vc.name = name
        
        XCTAssertTrue(vc.nameLabel?.text == name, "Expected name \(name) got \(vc.name!)")
    }
    
    func test_playerOneStoryboard_scoreSetter_updatesScoreLabel() {
         let vc = makePlayerScoreViewController(storyboard: makePlayerOneStoryboard())
         
         let score = "a score"
         vc.score = name
         
        XCTAssertTrue(vc.scoreLabel?.text == name, "Expected name \(score) got \(String(describing: vc.scoreLabel?.text))")
     }
    
    // MARK: - PlayerTwo Storyboard
    
    func test_playerTwoStoryboardInitialViewController_isPlayerScoreViewController() {
        XCTAssertTrue(makePlayerTwoStoryboard().instantiateInitialViewController() is PlayerScoreViewController)
    }
    
    func test_playerTwoStoryboard_nameSetter_updatesNameLabel() {
        let vc = makePlayerScoreViewController(storyboard: makePlayerTwoStoryboard())
        
        let name = "Test"
        vc.name = name
        
        XCTAssertTrue(vc.nameLabel?.text == name, "Expected name \(name) got \(vc.name!)")
    }
    
    func test_playerTwoStoryboard_scoreSetter_updatesScoreLabel() {
         let vc = makePlayerScoreViewController(storyboard: makePlayerTwoStoryboard())
         
         let score = "a score"
         vc.score = name
         
        XCTAssertTrue(vc.scoreLabel?.text == name, "Expected name \(score) got \(String(describing: vc.scoreLabel?.text))")
     }
    
    // MARK: - Helpers
    
    private func makePlayerOneStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "PlayerOne", bundle: nil)
    }
    
    private func makePlayerTwoStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "PlayerTwo", bundle: nil)
    }
    
    private func makePlayerScoreViewController(storyboard: UIStoryboard) -> PlayerScoreViewController {
        let vc = storyboard.instantiateInitialViewController() as! PlayerScoreViewController
        _ = vc.view
        return vc
    }
}
