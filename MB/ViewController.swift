//
//  ViewController.swift
//  MB
//
//  Created by MAC on 07/09/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import UIKit


class ViewController: UIViewController{

   
    @IBOutlet weak var nameTextBox: UITextField!
    @IBOutlet weak var idTextBox: UITextField!
    @IBOutlet weak var confirmButton: UIButton!
    @IBOutlet weak var finalTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        confirmButton.layer.cornerRadius = 20
    }
    
    @IBAction func idTextBoxClicked(_ sender: UITextField) {
        idTextBox.keyboardType = .numberPad
    }
    
    @IBAction func sonfirmValidation(_ sender: UIButton) {
       
        finalTextLabel.text = ""
        if idTextBox.text?.count != 8
        {
            idTextBox.text = ""
            nameTextBox.text = ""
            idTextBox.placeholder = "Please Enter Only Eight Numbers"
        }
        else
        {
            finalTextLabel.text = "Confirmed..."
        }
    }
    
}

