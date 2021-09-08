//
//  ViewController.swift
//  Card Game
//
//  Created by abdo on 10/14/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var LeftImageView: UIImageView!
    
    @IBOutlet weak var RightImageView: UIImageView!
    
    @IBOutlet weak var LeftScoreLabel: UILabel!
    
    
    @IBOutlet weak var RightScoreLabel: UILabel!
     var leftScore = 0
     var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func dealTapped(_ sender: Any) {
        let leftnumber = Int.random(in: 2...14)
        let rightnumber = Int.random(in: 2...14)
        LeftImageView.image = UIImage(named: "card\(leftnumber)")
        RightImageView.image = UIImage(named: "card\(rightnumber)")
        if leftnumber > rightnumber {
            leftScore += 1
            LeftScoreLabel.text = String (leftScore)
        }
        else if leftnumber < rightnumber {
            rightScore += 1
            RightScoreLabel.text = String (rightScore)
        }
        else
        {
            // tie
        }
    }
}

