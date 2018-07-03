//
//  FruitsTableViewController.swift
//  Trip
//
//  Created by Chanya Deshani on 2018/07/01.
//  Copyright © 2018 Chanya Deshani. All rights reserved.
//

import UIKit

class ActivitiesofTheDayTableViewController: UITableViewController {
    // activities  of a given day
    // API will send activities
    
    var activities : Array<String> = Array()
    var Days = ["Day1", "Day2" , "Day3" , "Day4", "Day5"]
   
    
    required init(coder decoder: NSCoder) {
        
        super.init(coder: decoder)!
        activities = getActivities(givendate: "Day1")
    }
    
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
    
    func getActivities (givendate: String) -> Array <String>{
        var activities : Array<String>
        if givendate == "Day1" {
            activities = ["Activity1", "Activity2" , "Activity3" , "Activity4", "Activity5"]
            return activities
        } else {
            activities = ["Activity6", "Activity7" , "Activity8" , "Activity9", "Activity10"]
            return activities
        }
        
    }
    
    
}
