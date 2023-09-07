//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btConfig: UIButton!
    
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btConfig.layer.cornerRadius = 4
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
//        //image literal agora é UIImage(named: "")
//        diceImageView1.image = UIImage(named: "DiceFour")
//
//        //   WHO      .WHAT  = VALUE
//        diceImageView2.image = UIImage(named: "DiceFour")
        
        // array de imagens sem usar Image Literal
        let diceImages = [ UIImage(named: "DiceOne"),
                                  UIImage(named: "DiceTwo"),
                                  UIImage(named: "DiceThree"),
                                  UIImage(named: "DiceFour"),
                                  UIImage(named: "DiceFive"),
                                  UIImage(named: "DiceSix") ]
               
               // randomElement() is more convenient, but Int.random(...) does the same.
               diceImageView1.image = diceImages.randomElement()!
               diceImageView2.image = diceImages[Int.random(in: 0...5)]
           }

    }
