//
//  ViewController.swift
//  Dicee
//
//  Created by Mobby on 12/8/17.
//  Copyright © 2017 Mosam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0

    
    @IBOutlet weak var diceimageView1: UIImageView!
    @IBOutlet weak var diceimageView2: UIImageView!
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sleep(5)
        
        
        updateDiceImages()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {

        updateDiceImages()
        
        
        
    }
    
    func updateDiceImages(){

        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        print(randomDiceIndex1)
        
        diceimageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceimageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    
    
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {

        updateDiceImages()
    }
    
}

