//
//  ViewController.swift
//  TitileApp
//
//  Copyright © 2019 VIS Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let titleHolder = TitleHolder()

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func editButtonClicked() {
        let editTitleViewController = EditTitleViewController(titleHolder: titleHolder)
        present(editTitleViewController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        titleLabel.text = titleHolder.title
        titleLabel.sizeToFit()
    }

}

