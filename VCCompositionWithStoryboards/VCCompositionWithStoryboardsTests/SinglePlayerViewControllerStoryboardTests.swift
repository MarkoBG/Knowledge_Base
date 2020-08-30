//
//  SinglePlayerViewControllerStoryboardTests.swift
//  VCCompositionWithStoryboardsTests
//
//  Created by Marko Tribl on 8/30/20.
//  Copyright © 2020 Marko Tribl. All rights reserved.
//

import XCTest
@testable import VCCompositionWithStoryboards

class SinglePlayerViewControllerStoryboardTests: XCTestCase {
    
    let storyboard = UIStoryboard(name: "SinglePlayerGame", bundle: nil)
    
    func test_singlePlayerGameStoryboardViewController_isSinglePlayerViewController() {
        XCTAssertTrue(storyboard.instantiateInitialViewController() is SinglePlayerVC)
    }
    
    func test_singlePlayerGameStoryboard_setUpPlayerForSinglePlayerViewController() {
        let vc = storyboard.instantiateInitialViewController() as! SinglePlayerVC
        _ = vc.view
        
        XCTAssertNotNil(vc.player)
    }
}
