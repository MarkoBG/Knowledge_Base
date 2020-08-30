//
//  MultiplayerVC.swift
//  VCCompositionWithStoryboards
//
//  Created by Marko Tribl on 8/30/20.
//  Copyright © 2020 Marko Tribl. All rights reserved.
//

import UIKit

class MultiplayerVC: UIViewController {
    @IBOutlet private weak var nameLabel: UILabel?
    @IBOutlet private weak var scoreLabel: UILabel?
    
    @IBOutlet private weak var p2nameLabel: UILabel?
    @IBOutlet private weak var p2scoreLabel: UILabel?
    
    var name: String? {
        set { nameLabel?.text = newValue }
        get { return nameLabel?.text }
    }

    var score: String? {
        set { scoreLabel?.text = newValue }
        get { return scoreLabel?.text }
    }
    
    var p2Name: String? {
        set { p2nameLabel?.text = newValue }
        get { return p2nameLabel?.text }
    }

    var p2Score: String? {
        set { p2scoreLabel?.text = newValue }
        get { return p2scoreLabel?.text }
    }
}
