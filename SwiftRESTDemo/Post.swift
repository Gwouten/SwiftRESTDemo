//
//  Post.swift
//  SwiftRESTDemo
//
//  Created by mobapp15 on 22/01/2020.
//  Copyright © 2020 mobapp15. All rights reserved.
//

import Foundation

class Post {
    
    var userId:Int
    var id:Int
    var title:String
    var body:String
    
    init(userId:Int, id:Int, title:String, body:String){
        self.userId = userId
        self.id = id
        self.title = title
        self.body = body
    }
    
}
