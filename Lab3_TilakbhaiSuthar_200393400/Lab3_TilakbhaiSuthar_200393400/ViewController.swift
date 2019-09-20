//
//  ViewController.swift
//  Lab3_TilakbhaiSuthar_200393400
//
//  Created by Tilakbhai Suthar on 2019-09-20.
//  Copyright © 2019 Tilakbhai Suthar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var LeftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    @IBAction func dealTapped(_ sender: Any) {
        let leftNumber = Int.random(in: 2...14)
        
        let rightNumber = Int.random(in: 2...14)
        
        LeftImageView.image = UIImage(named: "card\(leftNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber
        {
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        
        else if leftNumber < rightNumber
        {
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        
        else if leftNumber ==  rightNumber
        {
            leftScore -= 1
            leftScoreLabel.text = String(leftScore)
            rightScore -= 1
            rightScoreLabel.text = String(rightScore)
        }
        
    }
    
}

