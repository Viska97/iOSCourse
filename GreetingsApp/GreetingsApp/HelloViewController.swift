//
//  HelloViewController.swift
//  GreetingsApp
//
//  Copyright © 2019 VIS Apps. All rights reserved.
//

import UIKit

class HelloViewController: UIViewController {
    
    let model: Model
    
    @IBOutlet weak var greetingsLabel: UILabel!
    
    init(model: Model) {
        self.model = model
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        greetingsLabel.text = "Привет, " + model.userName
    }

}
