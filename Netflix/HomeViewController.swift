//
//  ViewController.swift
//  Netflix
//
//  Created by hwijinjeong on 1/28/24.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {
    
    let mainImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "노량"))
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let genreLabel: UILabel = {
        let label = UILabel()
        label.text = "재미진~~~~ 희열감을 느낄 수 있는!~~ 생생한"
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = .white
        return label
    }()
    
    let risingContentsLabel: UILabel = {
        let label = UILabel()
        label.text = "지금 뜨는 콘텐츠"
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .white
        return label
    }()
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 100, height: 150)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return collectionView
    }()
    
    let playBtn: UIButton = {
        let button = UIButton()
        let symbolConfiguration = UIImage.SymbolConfiguration(pointSize: 20, weight: .medium)
        var configuration = UIButton.Configuration.filled()
        configuration.title = "재생"
        configuration.image = UIImage(systemName: "play.fill", withConfiguration: symbolConfiguration)
        configuration.imagePadding = 10
        configuration.baseForegroundColor = .black
        configuration.baseBackgroundColor = .white
        button.configuration = configuration
        return button
    }()
    
    let contentsPickedBtn: UIButton = {
        let button = UIButton()
        let symbolConfiguration = UIImage.SymbolConfiguration(pointSize: 20, weight: .medium)
        var configuration = UIButton.Configuration.filled()
        configuration.title = "내가찜한 콘텐츠"
        configuration.image = UIImage(systemName: "plus", withConfiguration: symbolConfiguration)
        configuration.imagePadding = 10
        configuration.baseForegroundColor = .white
        configuration.baseBackgroundColor = .darkGray
        button.configuration = configuration
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        config()
    }
    
    func config() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(RisingContentsCollectionViewCell.self, forCellWithReuseIdentifier: "RisingContentsCollectionViewCell")
        
        configHierarchy()
    }
    
    func configHierarchy() {
        view.addSubviews([
            mainImageView,
            risingContentsLabel,
            collectionView,
        ])
        
        mainImageView.addSubviews([
            genreLabel,
            playBtn,
            contentsPickedBtn
        ])
        
        layout()
    }
    
    func layout() {
        mainImageView.snp.makeConstraints { make in
            make.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(20)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(10)
            make.height.equalTo(500)
        }
        
        playBtn.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-20)
            make.trailing.equalTo(mainImageView.snp.centerX).offset(-4)
            make.leading.equalTo(mainImageView.snp.leading).inset(20)
            make.height.equalTo(40)
        }
        
        contentsPickedBtn.snp.makeConstraints { make in
            make.bottom.equalTo(mainImageView.snp.bottom).inset(20)
            make.leading.equalTo(mainImageView.snp.centerX).offset(4)
            make.trailing.equalTo(mainImageView.snp.trailing).inset(20)
            make.height.equalTo(40)
        }
        
        genreLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(playBtn.snp.top).offset(-16)
        }
        
        risingContentsLabel.snp.makeConstraints { make in
            make.top.equalTo(mainImageView.snp.bottom).offset(16)
            make.leading.equalTo(view.safeAreaLayoutGuide).offset(4)
        }
        
        collectionView.snp.makeConstraints { make in
            make.top.equalTo(risingContentsLabel.snp.bottom).offset(8)
            make.leading.trailing.equalTo(view.safeAreaLayoutGuide)
            make.height.equalTo(150)
        }
    }
}


extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RisingContentsCollectionViewCell", for: indexPath) as! RisingContentsCollectionViewCell

        return cell
    }
}
