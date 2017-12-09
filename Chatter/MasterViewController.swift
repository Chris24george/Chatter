//
//  MasterViewController.swift
//  Chatter
//
//  Created by iD Student on 6/23/15.
//  Copyright (c) 2015 iD Tech. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController , UITableViewDataSource{

    var objects     = [AnyObject]()
    var posts       = postArray


    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func insertNewObject(sender: AnyObject) {
        objects.insert(NSDate(), atIndex: 0)
        let indexPath = NSIndexPath(forRow: 0, inSection: 0)
        self.tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
    }
    
    // MARK: - cancel and done functions
    
    @IBAction func cancelToMainMenu(segue: UIStoryboardSegue) {
        
    }
    
    
    @IBAction func saveNewPost(segue: UIStoryboardSegue) {
        let newPostController = segue.sourceViewController as! NewPostViewController
        self.posts.append(newPostController.post)
        
        let indexPath = NSIndexPath(forRow: posts.count - 1, inSection: 0)
        self.tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
    }
    
    

    // MARK: - Segues

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow() {
                let object = posts[indexPath.row]
                (segue.destinationViewController as! DetailViewController).detailItem = object
            }
        }
    }

    // MARK: - Table View

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.posts.count
    }
    

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PostCell", forIndexPath: indexPath) as! PostCell
        
        let post = posts[indexPath.row]
        cell.postText.text = post.text
        cell.date.text = NSDateFormatter.localizedStringFromDate(post.date, dateStyle: .ShortStyle, timeStyle: .ShortStyle)
        cell.userName.text = post.userName
        
        return cell
    }

    
    
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    }


}

