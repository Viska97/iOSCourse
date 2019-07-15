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
        let tabBarController = UITabBarController()
        let helloViewController = HelloViewController(model: model)
        helloViewController.tabBarItem = UITabBarItem(title: "Hello", image: UIImage(named: "hello"), selectedImage: nil)
        let editViewController = EditViewController(model: model)
        editViewController.tabBarItem = UITabBarItem(title: "Edit", image: UIImage(named: "edit"), selectedImage: nil)
        tabBarController.viewControllers = [helloViewController, editViewController]
        present(tabBarController, animated: true, completion: nil)
    }

}
