//
//  ViewController.swift
//  Postcard
//
//  Created by Maritza Drotleff on 10/24/14.
//  Copyright (c) 2014 Maritza Drotleff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var maileButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func senMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor() 
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        maileButton.setTitle("Mail Sent", forState: UIControlState.Normal
        )
        
    }

}

