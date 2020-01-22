//
//  DAO.swift
//  SwiftRESTDemo
//
//  Created by mobapp15 on 22/01/2020.
//  Copyright © 2020 mobapp15. All rights reserved.
//

import Foundation

class DAO {
    
    // Singleton
    static var sharedInstance = DAO.init()
    
    private init(){}
    
    func getAllPosts() -> [Post]{
        var posts = [Post]()
        let url = URL.init(string: "https://jsonplaceholder.typicode.com/posts")
        do {
            let rawData = try Data.init(contentsOf: url!)
            // root element
            let jsonData = try JSONSerialization.jsonObject(with: rawData) as! [NSObject]
            for item in jsonData {
                let userId = item.value(forKey: "userId") as! Int
                let id     = item.value(forKey: "id")     as! Int
                let title  = item.value(forKey: "title")  as! String
                let body   = item.value(forKey: "body")   as! String
                
                let post = Post.init(userId: userId, id: id, title: title, body: body)
                posts.append(post)
            }
            
        } catch {
            print("kapot")
        }
        
        return posts
    }
    
}
