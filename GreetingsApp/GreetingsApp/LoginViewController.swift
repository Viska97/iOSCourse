//
//  LoginViewController.swift
//  GreetingsApp
//
//  Copyright © 2019 VIS Apps. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    let model = Model()

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func onLogin() {
        guard let name = nameTextField.text, name.count > 0 else {return}
        model.userName = name
        performSegue(withIdentifier: "ShowMainScreen", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewControllers = (segue.destination as? UITabBarController)?.viewControllers,
            segue.identifier == "ShowMainScreen"{
            for viewController in viewControllers {
                if let helloViewController = viewController as? HelloViewController {
                    helloViewController.model = model
                }
                else if let editViewController = viewController as? EditViewController {
                    editViewController.model = model
                }
            }
        }
    }

}
