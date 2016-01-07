//
//  ViewController.swift
//  LoopsChallenge
//
//  Created by Robert Plant on 6/16/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var textField5: UITextField!
    
    @IBOutlet weak var myTextView: UITextView!
    
    var values = [String]()
    var output = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setValues()
    {
        values = [textField1.text!,textField2.text!,textField3.text!,textField4.text!,textField5.text!]
    }
    
    func resignFields()
    {
        textField1.resignFirstResponder()
        textField2.resignFirstResponder()
        textField3.resignFirstResponder()
        textField4.resignFirstResponder()
        textField5.resignFirstResponder()
    }
    
    @IBAction func mvpButtonPressed(sender: UIButton)
    {
        resignFields()
        setValues()
        
        /***************************************************
        * Start Your Code Here For MVP
        ***************************************************/
        for item in values
        {
            output += (item + " ")
            //output = output + item
        }
        /***************************************************
        * End Your Code Here For MVP
        ***************************************************/
        myTextView.text = output
    }
    
    @IBAction func stretch1ButtonPressed(sender: UIButton) {
        setValues()
        output = ""
        /***************************************************
        * Start Your Code Here For Stretch #1
        ***************************************************/
        for item in values
        {
            output += item
            if output 
        }
        /***************************************************
        * End Your Code Here For Stretch #1
        ***************************************************/
        myTextView.text = output
        
    }
    
    @IBAction func stretch2ButtonPressed(sender: UIButton) {
        resignFields()
        setValues()
        let maximum = values[0]
        /***************************************************
        * Start Your Code Here For Stretch #2
        ***************************************************/
        
        /***************************************************
        * End Your Code Here For Stretch #2
        ***************************************************/
        myTextView.text = "After searching the array, \(maximum) is the largest"
    }
    
    @IBAction func stretch3ButtonPressed(sender: UIButton) {
        resignFields()
        setValues()
        let total = 0
        /***************************************************
        * Start Your Code Here For Stretch #3
        ***************************************************/
        
        /***************************************************
        * End Your Code Here For Stretch #3
        ***************************************************/
        myTextView.text = "The total of the array is \(total)"
    }
    
    @IBAction func stretch4ButtonPressed(sender: UIButton) {
        resignFields()
        setValues()
        let minimum = values[0]
        let index = 0
        /***************************************************
        * Start Your Code Here For Stretch #4
        ***************************************************/
        
        /***************************************************
        * End Your Code Here For Stretch #4
        ***************************************************/
        myTextView.text =   "After searching the array, we have\n" +
            "found the minimum is \(minimum) and is\n" +
        "in position #\(index)"
    }
}

