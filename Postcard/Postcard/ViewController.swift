//
//  ViewController.swift
//  Postcard
//
//  Created by Felipe Ken Ikawa on 4/3/15.
//  Copyright (c) 2015 Felipe Ken Ikawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var messageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func mailButtonPressed(sender: UIButton) {
        //adding comment here
        messageLabel.hidden = false
        messageLabel.text = messageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        messageTextField.text = ""
        messageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail sent", forState: UIControlState.Normal)
        
    }

}

