//
//  ViewController.swift
//  TecnoCadastro
//
//  Created by Felipe Ken Ikawa on 4/13/15.
//  Copyright (c) 2015 Felipe Ken Ikawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textoLabel: UILabel!
    @IBOutlet weak var textoTextField: UITextField!
    @IBOutlet weak var enviarButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func enviarButtonPressed(sender: UIButton) {
        textoLabel.hidden = false
        
        //textoLabel.backgroundColor = UIColor.blueColor()
        
        textoLabel.text = textoTextField.text
        resignFirstResponder()
        enviarButton.setTitle("Enviado com Sucesso", forState: UIControlState.Normal)
        textoTextField.text = ""
        
        
    }


}

