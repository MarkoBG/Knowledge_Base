//
//  MultiplayerVC.swift
//  VCCompositionWithStoryboards
//
//  Created by Marko Tribl on 8/30/20.
//  Copyright © 2020 Marko Tribl. All rights reserved.
//

import UIKit

class MultiplayerVC: UIViewController {
    private(set) var players: MultipayerScoreVC?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Players", let vc = segue.destination as? MultipayerScoreVC {
            players = vc
        }
    }
}
