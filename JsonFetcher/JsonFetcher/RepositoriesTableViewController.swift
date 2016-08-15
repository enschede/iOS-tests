//
//  RepositoriesTableViewController.swift
//  JsonFetcher
//
//  Created by Marc Enschede on 15/08/16.
//  Copyright © 2016 Marc Enschede. All rights reserved.
//

import UIKit

class RepositoriesTableViewController: UITableViewController {

    @IBAction func refreshButtonTabbed(sender: UIBarButtonItem) {
        fetchRepositories()
    }
    
    func fetchRepositories() {
        let url = NSURL(string: "https://api.github.com/repositories")!
        
        let startTime = NSDate()
        
        print("start: \(startTime)")
        
        let _ = NSData(contentsOfURL: url)
        
        let interval = NSDate().timeIntervalSinceDate(startTime)
        print("end: \(interval)")
        
    }
    

}
