//
//  User.swift
//  SwiftRESTDemo
//
//  Created by mobapp15 on 22/01/2020.
//  Copyright © 2020 mobapp15. All rights reserved.
//

import Foundation

class User {
    
    var id:Int
    var name:String
    var username:String
    
    
    init(id:Int, name:String, username:String){
        self.id       = id
        self.name     = name
        self.username = username
    }
    
}
