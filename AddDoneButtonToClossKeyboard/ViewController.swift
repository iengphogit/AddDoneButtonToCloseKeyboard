//
//  ViewController.swift
//  AddDoneButtonToClossKeyboard
//
//  Created by Iengpho on 11/1/18.
//  Copyright © 2018 Iengpho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let flexiableSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: self, action:   nil)
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(self.doneClicked))
        toolBar.setItems([flexiableSpace, doneButton], animated: false)
        nameTextField.inputAccessoryView = toolBar
    }
    
    @objc func doneClicked() {
        print("Done clilcked")
        view.endEditing(true)
    }


}

