//  mainTableVw.swift
//  CollectionViewUnderTableView
//  Created by Ranjeet Raushan on 23/11/20.
//  Copyright © 2020 Ranjeet Raushan. All rights reserved.



import UIKit

class mainTableVw: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
  
    @IBOutlet weak var collectionVw: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionVw.delegate = self
        collectionVw.dataSource = self
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
       }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        return cell
       }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100.0, height: 100.0
    )
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
