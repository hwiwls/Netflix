//
//  SavedContentsViewController.swift
//  Netflix
//
//  Created by hwijinjeong on 1/29/24.
//

import UIKit
import SnapKit

class SavedContentsViewController: UIViewController {

    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "'나만의 자동 저장' 기능"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .white
        return label
    }()
    
    let detailLabel: UILabel = {
        let label = UILabel()
        label.text = "취향에 맞는 시리즈를 자동으로 추천해드립니다.\n디바이스에 언제나 시청할 콘텐츠가 존재하면\n너무너무 좋아요"
        label.textAlignment = .center
        label.numberOfLines = 3
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = .lightGray
        return label
    }()
    
    let mainImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "dummy"))
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let settingBtn: UIButton = {
        let button = UIButton()
        button.setTitle("설정하기", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemIndigo
        button.layer.cornerRadius = 5
        return button
    }()
    
    let lookAroundBtn: UIButton = {
        let button = UIButton()
        button.setTitle("저장 가능한 콘텐츠 살펴보기", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 5
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        config()
    }
    
    func config() {
        configHierarchy()
    }
    

    func configHierarchy() {
        view.addSubviews([
            titleLabel,
            detailLabel,
            mainImageView,
            settingBtn,
            lookAroundBtn
        ])
        
        layout()
    }
    
    func layout() {
        mainImageView.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(250)
        }
        
        detailLabel.snp.makeConstraints { make in
            make.bottom.equalTo(mainImageView.snp.top).offset(-8)
            make.centerX.equalToSuperview()
        }
        
        titleLabel.snp.makeConstraints { make in
            make.bottom.equalTo(detailLabel.snp.top).offset(-16)
            make.centerX.equalToSuperview()
        }
        
        settingBtn.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(50)
            make.top.equalTo(mainImageView.snp.bottom).offset(40)
            make.height.equalTo(35)
        }
        
        lookAroundBtn.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(60)
            make.top.equalTo(settingBtn.snp.bottom).offset(16)
            make.height.equalTo(35)
        }
    }
}
