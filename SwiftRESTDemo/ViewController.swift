//
//  ViewController.swift
//  SwiftRESTDemo
//
//  Created by mobapp15 on 22/01/2020.
//  Copyright © 2020 mobapp15. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var items = [Post]()

    override func viewDidLoad() {
        super.viewDidLoad()
        items = DAO.sharedInstance.getAllPosts()
    }

}

extension ViewController:UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PostCollectionViewCell
        
        let post = items[indexPath.item]
        cell.cellTitleLbl.text = post.title
        
        return cell
        
    }
    
}

extension ViewController:UICollectionViewDelegate{
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "postDetailSegue" {
                       
            let cell:UICollectionViewCell = sender as! UICollectionViewCell
            let index = collectionView.indexPath(for: cell)!
            let post:Post = items[index.item]
            let destination = segue.destination as! PostDetailViewController
            destination.postToDisplay = post
        }
    }
    
}

