//
//  ViewController.swift
//  IsItPrime
//
//  Created by Fran Primo Ruiz on 17/6/15.
//  Copyright (c) 2015 Fran Primo Ruiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var resultLbl: UILabel!
    
    
    @IBAction func primeBtn(sender: AnyObject) {
        var number = numberField.text.toInt()
        var unwrappedNumber = number!
        var isPrime = true
        if numberField != nil {
            if unwrappedNumber == 1 {
                isPrime = false
            }
            if unwrappedNumber != 1 && unwrappedNumber != 2 {
                for var i = 2; i < unwrappedNumber; i++ {
                    if unwrappedNumber % i == 0 {
                        isPrime = false
                        resultLbl.text = "The number \(unwrappedNumber) is not prime"
                    }
                }
            }
        }
        if isPrime == true {
            resultLbl.text = "The number \(unwrappedNumber) is prime"
        }else{
            resultLbl.text = "The number \(unwrappedNumber) is not prime"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

