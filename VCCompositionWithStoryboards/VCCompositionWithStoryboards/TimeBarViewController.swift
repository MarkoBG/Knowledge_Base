//
//  TimeBarViewController.swift
//  VCCompositionWithStoryboards
//
//  Created by Marko Tribl on 8/30/20.
//  Copyright © 2020 Marko Tribl. All rights reserved.
//

import UIKit

class TimeBarViewController: UIViewController {
    @IBOutlet private weak var barView: UIView?
    
    var progress: Float = 1 {
        // update bar view
        didSet { }
    }
}
