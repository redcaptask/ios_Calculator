//
//  ViewController.swift
//  Calculator_PW
//
//  Created by PW on 7/16/21.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen: Double = 0;
    var storeNumber: Double = 0;
    var actionMath = false;
    var operation = 0;
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func Numbers(_ sender: roundButton) {
        
        if actionMath ==  true{
            label.text = String(sender.tag - 1)
            numberOnScreen = Double(label.text!)!
            actionMath = false
        }
        else{
        label.text = label.text! + String(sender.tag - 1)
        numberOnScreen = Double(label.text!)!
    }
    }
    
    @IBAction func buttons(_ sender: roundButton)
    {
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            storeNumber = Double(label.text!)!
            if sender.tag == 12 //Divide
            {
                label.text = "/";
            }
            else if sender.tag == 13 //multiply
            {
                label.text = "X";
            }
            else if sender.tag == 14 //minus
            {
                label.text = "-";
            }
            else if sender.tag == 15 //plus
            {
                label.text = "+";
                
            }
        
        
            operation = sender.tag
            actionMath = true;
        }
        else if sender.tag == 16
        {
            if operation == 12
            {
                label.text = String(storeNumber / numberOnScreen)
            }
            else if operation == 13
            {
                label.text = String(storeNumber * numberOnScreen)
            }
            else if operation == 14
            {
                label.text = String(storeNumber - numberOnScreen)
            }
            else if operation == 15
            {
                label.text = String(storeNumber + numberOnScreen)
            }
        }
        else if sender.tag == 11
        {
            label.text = ""
            storeNumber = 0;
            numberOnScreen = 0;
            operation = 0;
            
        }
    }
    


}


