//
//  TableVC.swift
//  tableviewcontroller-test
//
//  Created by Prajwal Reddy on 14/03/17.
//  Copyright © 2017 Prajwal Reddy. All rights reserved.
//

import UIKit

class TableVC: UITableViewController {

    var cars = ["BMW","Ford","Volvo","Chevy"]
    override func viewDidLoad() {
        super.viewDidLoad()
        }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "carsLbl", for: indexPath)
        cell.textLabel?.text = cars[indexPath.row]
        cell.detailTextLabel?.text = "I like my \(cars[indexPath.row])"
        return cell
    }

}
