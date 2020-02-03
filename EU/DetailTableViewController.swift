//
//  DetailTableViewController.swift
//  EU
//
//  Created by John Gallaugher on 2/2/20.
//  Copyright © 2020 John Gallaugher. All rights reserved.
//

import UIKit

class DetailTableViewController: UITableViewController {
    @IBOutlet weak var saveBarButton: UIBarButtonItem!
    @IBOutlet weak var countryField: UITextField!
    @IBOutlet weak var capitalField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
}
