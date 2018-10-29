//
//  KnockViewController.swift
//  ikid
//
//  Created by Sagar Surana on 10/23/18.
//  Copyright © 2018 ischoolsagar. All rights reserved.
//

import UIKit

internal class KnockViewController : UIViewController {
    @IBOutlet weak var conf: UIButton!
    @IBOutlet weak var questionAnswer: UILabel!
    let joke = ["Knock, Knock!!", "Who's there?", "Cash", "Cash who?", "No, thanks. I prefer peanuts."]
    var current = 0;
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pressed(_ sender: Any) {
        
        if current == joke.count - 2 {
            let image = UIImage(named: "open")
            self.conf.setImage(image, for: .normal)
            current = current + 1
            questionAnswer.text = joke[current]
        } else if current == joke.count - 1 {
            let image = UIImage(named: "door")
            self.conf.setImage(image, for: .normal)
            current = 0
            questionAnswer.text = joke[current]
        } else {
            current = current + 1
            print(current)
            questionAnswer.text = joke[current]
            UIView.transition(with: questionAnswer, duration: 0.5, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        }
    }
}
