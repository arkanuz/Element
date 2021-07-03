//
//  TableViewCell.swift
//  Element
//
//  Created by Adolfo Lozada Serena on 02/07/21.
//

import UIKit

private let homeCollectionCellId = "homeCollectionCellId"

class TableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var titleColLabel: UILabel!
    @IBOutlet weak var homeCollectionView: UICollectionView!
    
    var array:[String]! {
        didSet{
            if homeCollectionView != nil {
                homeCollectionView.reloadData()
            }
        }
    }
    var section = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        homeCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: homeCollectionCellId)
        homeCollectionView.delegate = self
        homeCollectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: - CollectionView Delegate + DataSource
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if section == 0 {
            return CGSize(width: 99, height: 135)
        }
        else {
            return CGSize(width: 132, height: 180)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: homeCollectionCellId, for: indexPath)
        
        let imageName = array[indexPath.row]
        let imageView = UIImageView(image: UIImage(named: imageName))
        imageView.frame.size = cell.frame.size
        cell.backgroundView = imageView
        
        return cell
    }
    
}
