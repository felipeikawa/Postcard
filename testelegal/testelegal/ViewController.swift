//
//  ViewController.swift
//  testelegal
//
//  Created by Felipe Ken Ikawa on 4/4/15.
//  Copyright (c) 2015 Felipe Ken Ikawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var msgLabel: UILabel!
    @IBOutlet weak var msgTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func msgButtonPressed(sender: UIButton) {
        msgLabel.hidden = false
        msgLabel.text = msgTextField.text
    }

}

