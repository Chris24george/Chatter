//
//  Post.swift
//  Chatter
//
//  Created by iD Student on 6/23/15.
//  Copyright (c) 2015 iD Tech. All rights reserved.
//

import Foundation

class Post : NSObject {
    
    var text        : String
    var date        : NSDate
    var userName    : String
    
    init(text: String, date: NSDate, userName: String) {
        self.text = text
        self.date = date
        self.userName = userName
    }
    
}