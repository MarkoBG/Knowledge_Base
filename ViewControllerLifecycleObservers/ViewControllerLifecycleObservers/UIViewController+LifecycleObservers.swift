//
//  UIViewController+LifecycleObservers.swift
//  ViewControllerLifecycleObservers
//
//  Created by Marko Tribl on 8/31/20.
//  Copyright © 2020 Marko Tribl. All rights reserved.
//

import UIKit


extension UIViewController {
    func onViewWillAppear(_ callback: () -> Void) {
        addChild(UIViewController())
    }
}
