//
//  ViewController.swift
//  VCCompositionWithStoryboards
//
//  Created by Marko Tribl on 8/30/20.
//  Copyright © 2020 Marko Tribl. All rights reserved.
//

import UIKit

class SinglePlayerVC: UIViewController {
    
    private(set) var player: PlayerScoreViewController?

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Player", let vc = segue.destination as? PlayerScoreViewController {
            player = vc
        }
    }
}

