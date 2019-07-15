//
//  EditTitleViewController.swift
//  TitleNavigationApp
//
//  Copyright © 2019 VIS Apps. All rights reserved.
//

import UIKit

class EditTitleViewController: UIViewController {
    
    let titleHolder: TitleHolder
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @objc func saveButtonClicked() {
        guard let title = titleTextField.text, title.count > 0 else {return}
        titleHolder.title = title
        navigationController?.popViewController(animated: true)
    }
    
    @objc func cancelButtonClicked() {
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Экран 2"
        let saveButton = UIBarButtonItem(title: "Сохранить", style: .plain, target: self, action: #selector(saveButtonClicked))
        let cancelButton = UIBarButtonItem(title: "Отмена", style: .plain, target: self, action: #selector(cancelButtonClicked))
        cancelButton.tintColor = UIColor.red
        navigationItem.leftBarButtonItem = saveButton
        navigationItem.rightBarButtonItem = cancelButton
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
