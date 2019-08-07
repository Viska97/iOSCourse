//
//  ViewController.swift
//  LoginApp
//
//  Created by Vasily Materikin on 15/07/2019.
//  Copyright © 2019 VIS Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let defaultPassword = "Password"
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func loginButtonClicked(_ sender: UIButton) {
        guard let login = loginTextField.text, passwordTextField.text == defaultPassword else {return}
        guard login.count > 0 else {return}
        let greetingsViewController = GreetingsViewController()
        greetingsViewController.userName = login
        present(greetingsViewController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

