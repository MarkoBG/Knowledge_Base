//
//  MultiplayerScoreVC.swift
//  VCCompositionWithStoryboards
//
//  Created by Marko Tribl on 8/30/20.
//  Copyright © 2020 Marko Tribl. All rights reserved.
//

import UIKit

class MultipayerScoreVC: UIViewController {
    private(set) var playerOne: PlayerScoreViewController?
    private(set) var playerTwo: PlayerScoreViewController?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PlayerOne", let vc = segue.destination as? PlayerScoreViewController {
            playerOne = vc
        } else if segue.identifier == "PlayerTwo", let vc = segue.destination as? PlayerScoreViewController {
            playerTwo = vc
        }
    }
}
