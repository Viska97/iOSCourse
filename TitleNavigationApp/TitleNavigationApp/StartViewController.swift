//
//  StartViewController.swift
//  TitleNavigationApp
//
//  Copyright © 2019 VIS Apps. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    let titleHolder = TitleHolder()
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func editButtonClicked() {
        let editTitleViewController = EditTitleViewController(titleHolder: titleHolder)
        navigationController?.pushViewController(editTitleViewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Экран 1"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        titleLabel.text = titleHolder.title
        titleLabel.sizeToFit()
    }
    
}
