//
//  EditViewController.swift
//  GreetingsApp
//
//  Copyright © 2019 VIS Apps. All rights reserved.
//

import UIKit

class EditViewController: UIViewController, UITextFieldDelegate {
    
    let model: Model

    @IBOutlet weak var nameTextField: UITextField!
    
    init(model: Model) {
        self.model = model
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        nameTextField.text = model.userName
    }
    
    internal func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let name = textField.text, name.count > 0 else {return false}
        textField.resignFirstResponder()
        model.userName = name
        return true
    }

}
