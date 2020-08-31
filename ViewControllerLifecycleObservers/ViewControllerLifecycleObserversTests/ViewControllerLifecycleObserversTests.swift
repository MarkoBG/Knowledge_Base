//
//  ViewControllerLifecycleObserversTests.swift
//  ViewControllerLifecycleObserversTests
//
//  Created by Marko Tribl on 8/31/20.
//  Copyright © 2020 Marko Tribl. All rights reserved.
//

import XCTest
@testable import ViewControllerLifecycleObservers

class ViewControllerLifecycleObserversTests: XCTestCase {


    func test_viewWillAppearObserver_isAddedAsChild() {
        
        let sut = UIViewController()
        
        sut.onViewWillAppear {}
        
        XCTAssertEqual(sut.children.count, 1)
    }

}
