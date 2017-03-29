//
//  ArticlesCollectionViewController.swift
//  NJ
//
//  Created by Josh Ntwari on 3/27/17.
//  Copyright © 2017 Josh. All rights reserved.
//

import UIKit


class ArticlesCollectionViewController: UICollectionViewController {
    
    private let leftAndRightPaddings: CGFloat = 32.0
    private let numberOfItemsPerRow: CGFloat = 3.0
    private let heightAdjustment: CGFloat = 30.0
    let dict:[Int:String] = [0:"Innovation distinguishes between a leader and a follower.",
                             1:"Great things in business are never done by one person. They're done by a team of people.",
                             2:"Design is not just what it looks like and feels like. Design is how it works.",
                             4:"Sometimes life hits you in the head with a brick. Don't lose faith.",
                             5:"Computers themselves, and software yet to be developed, will revolutionize the way we learn.",
                             6:"Stay hungry, stay foolish."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK- Set the title bar label
        
        let titleLabel = UILabel(frame: CGRect(x: 0,y: 0,width: 100, height: 32))
        titleLabel.text = "All Articles"
        self.navigationItem.titleView = titleLabel
        
        let width = (collectionView!.frame.width - leftAndRightPaddings)/numberOfItemsPerRow
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width:width,height:width + heightAdjustment)
    }
    
    struct StoryBoard {
        static let ShowDetailViewSegue = "showDetailView"
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as UICollectionViewCell
        
        return cell
    }
    
    func generateRandomText()->String{
        
        let index: Int = Int(arc4random_uniform(UInt32(dict.count)))
        let randomVal = Array(dict.values)[index]
        return randomVal
    }
    
    //MARK- Work with manual segue
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: StoryBoard.ShowDetailViewSegue, sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == StoryBoard.ShowDetailViewSegue{
            let detailViewController = segue.destination as! DetailViewController
            detailViewController.Navtitle = "Article Title"
            detailViewController.Details = generateRandomText()
        }
    }
}
