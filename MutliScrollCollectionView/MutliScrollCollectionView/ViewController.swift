//
//  ViewController.swift
//  MutliScrollCollectionView
//
//  Created by ZA-LTP44 on 7/18/18.
//  Copyright © 2018 Atul Prakash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    let cellIdentifier = "Cell"
    var items : [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 1...50 {
            items.append(i)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

// MARK: - UICollectionViewDataSource

extension ViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! NumberCollectionViewCell
        
        cell.backgroundColor = UIColor.white
        
        cell.numberlabel.text = String(items[indexPath.item])
        cell.numberlabel.adjustsFontSizeToFitWidth = true
        
        
        return cell
        
    }
}
