//
//  DadJokesViewController.swift
//  ikid
//
//  Created by Sagar Surana on 10/23/18.
//  Copyright © 2018 ischoolsagar. All rights reserved.
//

import UIKit

class DadJokesViewController: UIViewController {
    @IBOutlet weak var conf: UIButton!
    @IBOutlet weak var questionAnswer: UILabel!
    var open = true
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pressed(_ sender: Any) {
        if open {
            let cry =   UIImage(named: "cry")
            conf.setImage(cry, for: .normal)
            
            questionAnswer.text = "Because it got mugged"
            UIView.transition(with: conf, duration: 0.5, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            UIView.transition(with: questionAnswer, duration: 0.5, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            open = false
        } else {
            open = true
            let image = UIImage(named: "confused")
            self.conf.setImage(image, for: .normal)
            questionAnswer.text = "Why did the coffee call 911?"
            UIView.transition(with: questionAnswer, duration: 0.5, options: .transitionFlipFromRight, animations: nil, completion: nil)
            UIView.transition(with: conf, duration: 0.5, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
    }
}

