//
//  FruitsTableViewController.swift
//  Trip
//
//  Created by Chanya Deshani on 2018/07/01.
//  Copyright © 2018 Chanya Deshani. All rights reserved.
//

import UIKit

class FruitsTableViewController: UITableViewController {
    
    var activities = ["Activity1", "Activity2" , "Activity3" , "Activity4", "Activity5"]

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
       return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return activities.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LableCell", for: indexPath)

        cell.textLabel?.text = activities[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        //return "TODO \(section + 1)"
        return "TODOs"
    }



}
