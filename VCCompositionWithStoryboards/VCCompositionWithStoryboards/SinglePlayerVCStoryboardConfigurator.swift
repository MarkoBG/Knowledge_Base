//
//  SinglePlayerVCStoryboardConfigurator.swift
//  VCCompositionWithStoryboards
//
//  Created by Marko Tribl on 8/30/20.
//  Copyright © 2020 Marko Tribl. All rights reserved.
//

import UIKit

final class SinglePlayerVCStoryboardConfigurator: NSObject {
    
    var observation: NSKeyValueObservation?
    
    @IBOutlet private weak var player: UIViewController? {
        didSet {
            observation = player?.observe(\.parent) { player, changes in
                if let singlePlayerController = player.parent as? SinglePlayerVC {
                    singlePlayerController.player = player as? PlayerScoreViewController
                }
            }
        }
    }
}
