//
//  ViewController.swift
//  IsITPrime
//
//  Created by ben on 26/11/2014.
//  Copyright (c) 2014 Ben Chamla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet weak var number: UITextField!
   
    @IBAction func ButtonPressed(sender: AnyObject) {
        
   
        var IsPrime = true
        var IntNumber = number.text.toInt()
        if (IntNumber != nil){
            
            if (IntNumber < 1){
                AnswerLabel.text = "Please enter a positiv number"
            }else{
                
                if (IntNumber == 1){
                    
                    AnswerLabel.text = "1 is not prime"
                }else{
                    
                    for var i = 2; i<IntNumber!/2; ++i{
                        
                        if (IntNumber! % i == 0){
                            
                            IsPrime = false
                            
                        }
                        
                    }
                }
            }
            
            
        }else{
            AnswerLabel.text = "Please enter a number"
        }
        
        if (IsPrime == true){
            AnswerLabel.text = "\(IntNumber!) is prime"
        }
        else{
            AnswerLabel.text = "\(IntNumber!) is not prime"
        }
    }
    @IBOutlet weak var AnswerLabel: UILabel!


 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

