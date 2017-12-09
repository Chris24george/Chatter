//
//  DetailViewController.swift
//  Chatter
//
//  Created by iD Student on 6/23/15.
//  Copyright (c) 2015 iD Tech. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel   : UILabel!
    @IBOutlet weak var detailUserNameLabel      : UILabel!
    @IBOutlet weak var detailDateLabel          : UILabel!


    var detailItem: AnyObject? {
        didSet {
            self.configureView()
        }
    }

    func configureView() {
        var post = detailItem as! Post
        detailDescriptionLabel?.text = post.text
        detailUserNameLabel?.text = post.userName
        detailDateLabel?.text = NSDateFormatter.localizedStringFromDate(post.date, dateStyle: .ShortStyle, timeStyle: .ShortStyle)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

