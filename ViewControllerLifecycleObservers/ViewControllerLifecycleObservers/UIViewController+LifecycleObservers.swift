//
//  UIViewController+LifecycleObservers.swift
//  ViewControllerLifecycleObservers
//
//  Created by Marko Tribl on 8/31/20.
//  Copyright © 2020 Marko Tribl. All rights reserved.
//

import UIKit


extension UIViewController {
    func onViewWillAppear(_ callback: @escaping () -> Void) {
        let observer = ViewControllerLifecycleObserver(viewWillAppearCallback: callback)
        addChild(observer)
        observer.view.isHidden = true
        view.addSubview(observer.view)
        observer.didMove(toParent: self)
    }
}

private class ViewControllerLifecycleObserver: UIViewController {
    
    private var viewWillAppearCallback: () -> Void = {}
    
    convenience init(viewWillAppearCallback: @escaping () -> Void = {}) {
        self.init()
        self.viewWillAppearCallback = viewWillAppearCallback
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        viewWillAppearCallback()
    }
}
