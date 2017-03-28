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
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as UICollectionViewCell
        
        return cell
    }
}
