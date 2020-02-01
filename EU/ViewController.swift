//
//  ViewController.swift
//  EU
//
//  Created by John Gallaugher on 1/31/20.
//  Copyright © 2020 John Gallaugher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var members = ["Austria",
                   "Belgium",
                   "Bulgaria",
                   "Croatia",
                   "Cyprus",
                   "Czechia",
                   "Denmark",
                   "Estonia",
                   "Finland",
                   "France",
                   "Germany",
                   "Greece",
                   "Hungary",
                   "Ireland",
                   "Italy",
                   "Latvia",
                   "Lithuania",
                   "Luxembourg",
                   "Malta",
                   "Netherlands",
                   "Poland",
                   "Portugal",
                   "Romania",
                   "Slovakia",
                   "Slovenia",
                   "Spain",
                   "Sweden",
                   "United Kingdom"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("😎 numberOfRowsInSection was just called. Returning \(members.count)")
        return members.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("🚣‍♂️ cellForRowAt was just called for indexPath.row = \(indexPath.row) which is the cell containing \(members[indexPath.row])")
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = members[indexPath.row]
        return cell
    }
}
