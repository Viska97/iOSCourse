//
//  HelloViewController.swift
//  GreetingsApp
//
//  Copyright © 2019 VIS Apps. All rights reserved.
//

import UIKit

class HelloViewController: UIViewController {
    
    var model: Model? = nil
    
    @IBOutlet weak var greetingsLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let name = model?.userName ?? ""
        greetingsLabel.text = "Привет, " + name
    }

}
