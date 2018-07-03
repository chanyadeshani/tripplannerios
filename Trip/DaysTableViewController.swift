//
//  DaysTableViewController.swift
//  Trip
//
//  Created by Chanya Deshani on 2018/07/03.
//  Copyright © 2018 Chanya Deshani. All rights reserved.
//

import UIKit

class DaysTableViewController: UITableViewController {
var Days = ["Day1", "Day2" , "Day3" , "Day4", "Day5"]

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        cell.textLabel?.text = "Section \(indexPath.section) Row \(indexPath.row)"

        return cell
    }
   

   

}
