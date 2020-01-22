//
//  PostDetailViewController.swift
//  SwiftRESTDemo
//
//  Created by mobapp15 on 22/01/2020.
//  Copyright © 2020 mobapp15. All rights reserved.
//

import UIKit

class PostDetailViewController: UIViewController {

    @IBOutlet weak var postTitleLbl: UILabel!
    @IBOutlet weak var postAuthorLbl: UILabel!
    @IBOutlet weak var postContentTV: UITextView!
    var postToDisplay:Post?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userToDisplay = DAO.sharedInstance.getUser(userId: postToDisplay!.userId)
        
        postTitleLbl.text  = postToDisplay?.title
        postContentTV.text = postToDisplay?.body
        postAuthorLbl.text = userToDisplay
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
