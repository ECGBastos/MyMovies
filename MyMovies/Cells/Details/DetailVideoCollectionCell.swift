//
//  DetailVideoCollectionCell.swift
//  MyMovies
//
//  Created by Eduardo Bastos on 17/10/22.
//

import Foundation
import UIKit

class DetailVideoCollectionCell: BaseCollectionCell {
    
    var arrVideos = [MovieVideo]()
    
    override func sizeCollection() -> CGSize {
        return size_detail_video
    }
    
    override func registerCell() {
        self.collectionView.register(DetailVideoViewCell.self, self.collectionView)
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
    }
    
}

extension DetailVideoCollectionCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.arrVideos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: DetailVideoViewCell.self), for: indexPath) as? DetailVideoViewCell else {
            fatalError()
        }
        cell.configure(viewModel: self.arrVideos[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    }
}

extension DetailVideoCollectionCell: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: marginCell, bottom: 0, right: marginCell)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return paddingCell
    }
    
}
