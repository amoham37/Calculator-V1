//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Ahmet Mohammed on 2/4/19.
//  Copyright © 2019 Ahmet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let PLUS = 10
    
    @IBOutlet var lblText : UILabel!
    
    var num1 : Int = 0
    var num2 : Int = 0
    var operand : Int! = 0
    var answer : Double = 0.0
    var theNum : Int = 0
    
    
    @IBAction func calculate(sender : UIButton){
        num2 = Int(theNum)
        
        if operand == PLUS{
            answer = Double(num1 + num2)
            operand = PLUS
        }
        
        num1 = 0
        num2 = 0
        
        theNum = Int(answer)
        printNum()
//        answer = 0.0
//        theNum = ""
        
    }
    
    @IBAction func setOperand(sender : UIButton ){
        if sender.tag == 10 {
            operand = sender.tag
            saveNum1()
        }
        
        if sender.tag == -2  {
            theNum = 0
            printNum()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        printNum()
    }
    
    func printNum(){
        lblText.text = String(theNum)
    }
    
    @IBAction func pressNum(sender : UIButton){
//        if sender.tag >= 0 && sender.tag <= 9 {
        
        
        theNum = sender.tag
        
        printNum()
        
//        lblText.text = lblText.text! + showr!

        

//        }
    }
    
    func saveNum1(){
        num1 = Int(theNum)
//        theNum = 0
        printNum()
    }
    
    
   
    

   
}

