//
//  ViewController.swift
//  projetoTelas
//
//  Created by Felipe Ken Ikawa on 4/4/15.
//  Copyright (c) 2015 Felipe Ken Ikawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var mensagemTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var limparButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func enviarButtonPressed(sender: UIButton) {
        textLabel.hidden = false
        textLabel.text = mensagemTextField.text
        textLabel.textColor = UIColor.redColor()
        
        mensagemTextField.resignFirstResponder()
        mensagemTextField.text = ""
        mailButton.setTitle("Email Enviado", forState: UIControlState.Normal)
        
    }
    
    @IBAction func limparButtonPressed(sender: AnyObject) {
        textLabel.text = ""
        limparButton.setTitle("Botao Limpo", forState: UIControlState.Normal)
    }
    

}

