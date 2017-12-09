//
//  NewPostViewController.swift
//  Chatter
//
//  Created by iD Student on 6/24/15.
//  Copyright (c) 2015 iD Tech. All rights reserved.
//

import UIKit

class NewPostViewController: UIViewController {

    @IBOutlet weak var postTextView         : UITextView!
    @IBOutlet weak var userNameTextField    : UITextField!
    
    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if (segue.identifier == "SaveNewPost") {
            post = Post(text: self.postTextView.text, date: NSDate(), userName: self.userNameTextField.text)
        }
    }

}
