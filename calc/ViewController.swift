//
//  ViewController.swift
//  calc
//
//  Created by APPLE on 06/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calcLabel: UILabel!
    
    @IBAction func operandBtn(_ sender: UIButton) {
        calcLabel.text = calcLabel.text! + String(sender.tag-1)
    }
    
    
    @IBAction func operatorBtn(_ sender: Any) {
    }
    
    @IBAction func clearBtn(_ sender: Any) {
    }
    
    @IBAction func equalBtn(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

