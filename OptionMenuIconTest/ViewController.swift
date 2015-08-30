//
//  ViewController.swift
//  OptionMenuIconTest
//
//  Created by Manuel Meyer on 25.08.15.
//  Copyright (c) 2015 Manuel Meyer. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
    
    override func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [AnyObject]? {

        let moreClosure = { (action: UITableViewRowAction!, indexPath: NSIndexPath!) -> Void in
            println("More closure called")
        }
        
        let moreAction = UITableViewRowAction(style: .Normal, title: "  ", handler: moreClosure)
        
        if let image = UIImage(named: "star.png"){
            moreAction.backgroundColor = UIColor(patternImage: image)

        }
        return [moreAction]
    }
    
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        // Intentionally blank. Required to use UITableViewRowActions
    }
    
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
            return  min((44.0 * CGFloat(indexPath.row) + 1), 122.0)
    }
}

