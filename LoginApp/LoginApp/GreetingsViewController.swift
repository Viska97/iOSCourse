//
//  GreetingsViewController.swift
//  LoginApp
//
//  Created by Vasily Materikin on 15/07/2019.
//  Copyright © 2019 VIS Apps. All rights reserved.
//

import UIKit

class GreetingsViewController: UIViewController {
    
    var userName = "Test User"
    
    @IBOutlet weak var greetingsLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        greetingsLabel.text = "Hello, " + userName
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
