//
//  EditTitleViewController.swift
//  TitileApp
//
//  Copyright © 2019 VIS Apps. All rights reserved.
//

import UIKit

class EditTitleViewController: UIViewController {
    
    let titleHolder: TitleHolder

    @IBOutlet weak var titleTextField: UITextField!
    
    @IBAction func saveButtonClicked() {
        guard let title = titleTextField.text, title.count > 0 else {return}
        titleHolder.title = title
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelButtonClicked() {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleTextField.text = titleHolder.title
    }
    
    init(titleHolder: TitleHolder) {
        self.titleHolder = titleHolder
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
