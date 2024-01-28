//
//  RisingContentsCollectionViewCell.swift
//  Netflix
//
//  Created by hwijinjeong on 1/29/24.
//

import UIKit
import SnapKit

class RisingContentsCollectionViewCell: UICollectionViewCell {
    
    let movieImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "노량"))
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(movieImageView)
        
        movieImageView.snp.makeConstraints { make in
            make.top.leading.bottom.trailing.equalToSuperview()
            make.height.equalTo(120)
        }
        
        self.backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

