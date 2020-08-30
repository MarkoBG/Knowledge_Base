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
}
