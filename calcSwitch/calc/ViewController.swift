//
//  ViewController.swift
//  calc
//
//  Created by APPLE on 06/10/22.
//

import UIKit

class ViewController: UIViewController {
    var numberOnScreen: Double = 0
    var previousNumber: Double = 0
    var performMathsOP = false
    var operation = 0
    var ch = 0

    @IBOutlet weak var calcLabel: UILabel!
    
    @IBAction func operandBtn(_ sender: UIButton) {
        if performMathsOP == true{
            calcLabel.text = String(sender.tag-1)
            numberOnScreen = Double(calcLabel.text!)!
            performMathsOP = false
        }
        else{
            calcLabel.text = calcLabel.text! + String(sender.tag-1)
            previousNumber = Double(calcLabel.text!)!
        }
       

    }
    
    
    @IBAction func operatorBtn(_ sender: UIButton) {
        if calcLabel.text != "" && sender.tag != 15 && sender.tag != 16{
            ch = sender.tag
            switch ch{
            case 11: calcLabel.text = String("+")
            case 12: calcLabel.text = calcLabel.text! + String("-")
            case 13: calcLabel.text = calcLabel.text! + String("/")
            case 14: calcLabel.text = calcLabel.text! + String("*")
                
            default:  previousNumber = Double(calcLabel.text!)!
            }

            operation = sender.tag
            performMathsOP = true
            
        
            

                
                
            
           
    
        }
    
           
        
            

        if sender.tag == 15{
            if operation == 11{
                calcLabel.text = String(previousNumber + numberOnScreen)
                previousNumber = Double(calcLabel.text!)!
            }
            if operation == 12{
                calcLabel.text = String(previousNumber - numberOnScreen)
                previousNumber = Double(calcLabel.text!)!
            }
            if operation == 13{
                calcLabel.text = String(previousNumber / numberOnScreen)
                previousNumber = Double(calcLabel.text!)!
            }
            if operation == 14{
                calcLabel.text = String(previousNumber * numberOnScreen)
                previousNumber = Double(calcLabel.text!)!
            }


           
        }
        else if sender.tag == 16{
            calcLabel.text = ""
            previousNumber = 0
            numberOnScreen = 0
            operation = 0
        }
    }
    
  
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
