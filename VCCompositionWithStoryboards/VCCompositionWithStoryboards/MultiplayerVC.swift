//
//  MultiplayerVC.swift
//  VCCompositionWithStoryboards
//
//  Created by Marko Tribl on 8/30/20.
//  Copyright © 2020 Marko Tribl. All rights reserved.
//

import UIKit

final class PlayerView: UIView {
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

class MultiplayerVC: UIViewController {
    @IBOutlet private weak var playerOne: PlayerView?
    @IBOutlet private weak var playerTwo: PlayerView?
}
