//
//  ViewController.swift
//  carros
//
//  Created by Felipe Ken Ikawa on 4/5/15.
//  Copyright (c) 2015 Felipe Ken Ikawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mebsagemLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var mensagemTextField: UITextField!
    
    @IBOutlet weak var mensagemBotao: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func emailButtonPressed(sender: UIButton) {
        mebsagemLabel.hidden = false
        mebsagemLabel.text = mensagemTextField.text
        mebsagemLabel.textColor = UIColor.orangeColor()
        mensagemTextField.text = ""
        
        mensagemBotao.setTitle("Email Enviado", forState: UIControlState.Normal)
        
    }
    

}

