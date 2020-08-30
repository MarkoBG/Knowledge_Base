//
//  TimedMultiplayerVC.swift
//  VCCompositionWithStoryboards
//
//  Created by Marko Tribl on 8/30/20.
//  Copyright © 2020 Marko Tribl. All rights reserved.
//

import UIKit

class TimedMultiplayerVC: UIViewController {
    private(set) var timeBar: TimeBarViewController?
    private(set) var players: MultipayerScoreVC?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TimeBar", let vc = segue.destination as? TimeBarViewController {
            timeBar = vc
        } else if segue.identifier == "Players", let vc = segue.destination as? MultipayerScoreVC {
            players = vc
        }
    }
}
