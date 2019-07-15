//
//  EditViewController.swift
//  GreetingsApp
//
//  Copyright © 2019 VIS Apps. All rights reserved.
//

import UIKit

class EditViewController: UIViewController, UITextFieldDelegate {
    
    var model: Model? = nil

    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        nameTextField.text = model?.userName ?? ""
    }
    
    internal func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let name = textField.text, name.count > 0 else {return false}
        textField.resignFirstResponder()
        model?.userName = name
        return true
    }

}
