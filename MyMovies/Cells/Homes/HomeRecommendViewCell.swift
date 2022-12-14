//
//  HomeRecommendViewCell.swift
//  MyMovies
//
//  Created by Eduardo Bastos on 16/10/22.
//

import Foundation
import SnapKit
import Nuke

class HomeRecommendViewCell: UICollectionViewCell {
    
    private lazy var viewBg: UIView = {
        let outerView = UIView()
        self.addSubview(outerView)
        return outerView
    }()
    
    private lazy var imgBg: UIImageView = {
        let img = UIImageView()
        img.clipsToBounds = true
        img.layer.cornerRadius = imgCornerRadius
        self.viewBg.addSubview(img)
        return img
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupLayout()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout() {
        self.viewBg.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        self.viewBg.viewShadow()
        
        self.imgBg.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    func configure(viewModel: MovieViewViewModel) {
        Nuke.loadImage(
            with: viewModel.backdropURL,
            options: ImageLoadingOptions(
                transition: .fadeIn(duration: 0.33)
            ),
            into: self.imgBg
        )
    }
}
