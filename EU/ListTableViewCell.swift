//
//  ListTableViewCell.swift
//  EU
//
//  Created by John Gallaugher on 2/19/20.
//  Copyright © 2020 John Gallaugher. All rights reserved.
//

import UIKit

protocol ListTableViewCellDelegate: class {
    func euroButtonToggled(sender: ListTableViewCell)
}

class ListTableViewCell: UITableViewCell {

    @IBOutlet weak var euroButton: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var capitalLabel: UILabel!
    
    weak var delegate: ListTableViewCellDelegate?
    
    var nation: Nation! {
        didSet {
            countryLabel.text = nation.country
            capitalLabel.text = "Capital: \(nation.capital)"
            euroButton.isSelected = nation.usesEuro
        }
    }

    @IBAction func euroTapped(_ sender: UIButton) {
        delegate?.euroButtonToggled(sender: self)
    }
}
