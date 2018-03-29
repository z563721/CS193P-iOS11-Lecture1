//
//  ViewController.swift
//  Concertration
//
//  Created by 张富城 on 2018/1/8.
//  Copyright © 2018年 张富城. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount : Int = 0 {
        didSet {
            flipCountLabel.text = "Flips:\(flipCount)"
        }
    }
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButton: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        let cardNumber = cardButton.index(of: sender)
        print("cardNumber = \(String(describing: cardNumber))");
    }
    
    func flipCard(withEmoji emoji : String, on button : UIButton)  {
        print("flipCard(withEmoji: \(emoji))");
        if  button.currentTitle == emoji {
            button.setTitle("", for:  UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.6355629551, blue: 0.04069422185, alpha: 1)
        }
        else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
}

