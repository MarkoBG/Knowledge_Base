//
//  ViewController.swift
//  VCCompositionWithStoryboards
//
//  Created by Marko Tribl on 8/30/20.
//  Copyright © 2020 Marko Tribl. All rights reserved.
//

import UIKit

class SinglePlayerVC: UIViewController {
    
    @IBOutlet private weak var nameLabel: UILabel?
    @IBOutlet private weak var scoreLabel: UILabel?
    
    var name: String? {
        set { nameLabel?.text = newValue }
        get { return nameLabel?.text }
    }

    var score: String? {
        set { scoreLabel?.text = newValue }
        get { return scoreLabel?.text }
    }

}

