//
//  newHotViewController.swift
//  Netflix
//
//  Created by hwijinjeong on 1/29/24.
//

import UIKit
import SnapKit

class newHotViewController: UIViewController {
    
    let searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.backgroundColor = .darkGray
        searchBar.text = "영화, 시리즈를 검색하세요..."
        return searchBar
    }()
    
    let willOpenBtn: UIButton = {
        let button = UIButton()
        let symbolConfiguration = UIImage.SymbolConfiguration(pointSize: 10, weight: .medium)
        var configuration = UIButton.Configuration.filled()
        configuration.image = UIImage(named: "blue")
        configuration.imagePadding = 4
        configuration.baseForegroundColor = .black
        configuration.baseBackgroundColor = .white
        configuration.background.cornerRadius = 30
        var titleAttr = AttributedString.init("공계 예정")
        titleAttr.foregroundColor = .black
        titleAttr.font = .systemFont(ofSize: 13.0, weight: .medium)
        configuration.attributedTitle = titleAttr
        button.configuration = configuration
        return button
    }()
    
    let popularContentsBtn: UIButton = {
        let button = UIButton()
        let symbolConfiguration = UIImage.SymbolConfiguration(pointSize: 10, weight: .medium)
        var configuration = UIButton.Configuration.filled()
        configuration.image = UIImage(named: "turquoise")
        configuration.imagePadding = 4
        configuration.baseForegroundColor = .black
        configuration.baseBackgroundColor = .white
        configuration.background.cornerRadius = 30
        var titleAttr = AttributedString.init("모두의 인기 콘텐츠")
        titleAttr.foregroundColor = .black
        titleAttr.font = .systemFont(ofSize: 13.0, weight: .medium)
        configuration.attributedTitle = titleAttr
        button.configuration = configuration
        return button
    }()
    
    let top10Btn: UIButton = {
        let button = UIButton()
        let symbolConfiguration = UIImage.SymbolConfiguration(pointSize: 10, weight: .medium)
        var configuration = UIButton.Configuration.filled()
        configuration.image = UIImage(named: "pink")
        configuration.imagePadding = 4
        configuration.baseBackgroundColor = .white
        configuration.background.cornerRadius = 30
        var titleAttr = AttributedString.init("TOP10 시리즈")
        configuration.baseForegroundColor = .black
        titleAttr.foregroundColor = .black
        titleAttr.font = .systemFont(ofSize: 13.0, weight: .medium)
        configuration.attributedTitle = titleAttr
        button.configuration = configuration
        return button
    }()
    
    let emptyLabel: UILabel = {
        let label = UILabel()
        label.text = "이런! 찾으시는 작품이 없습니다."
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    
    let detailLabel: UILabel = {
        let label = UILabel()
        label.text = "다른 영화, 시리즈, 배우, 감독 또는 장르를 검색해주세요"
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .lightGray
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        config()
    }
    
    func config() {
        configHierarchy()
    }
    
    func configHierarchy() {
        view.addSubviews([
            searchBar,
            willOpenBtn,
            popularContentsBtn,
            top10Btn,
            emptyLabel,
            detailLabel
        ])
        
        layout()
    }
    
    func layout() {
        searchBar.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(20)
            make.height.equalTo(35)
        }
        
        willOpenBtn.snp.makeConstraints { make in
            make.top.equalTo(searchBar.snp.bottom).offset(20)
            make.leading.equalTo(view.safeAreaLayoutGuide).offset(2)
            make.height.equalTo(30)
        }
        
        popularContentsBtn.snp.makeConstraints { make in
            make.top.equalTo(searchBar.snp.bottom).offset(20)
            make.height.equalTo(30)
            make.leading.equalTo(willOpenBtn.snp.trailing).offset(4)
        }
        
        top10Btn.snp.makeConstraints { make in
            make.top.equalTo(searchBar.snp.bottom).offset(20)
            make.height.equalTo(30)
            make.leading.equalTo(popularContentsBtn.snp.trailing).offset(4)
            make.trailing.equalTo(view.safeAreaLayoutGuide).offset(-2)
        }
        
        emptyLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-100)
        }
        
        detailLabel.snp.makeConstraints { make in
            make.top.equalTo(emptyLabel.snp.bottom).offset(8)
            make.centerX.equalToSuperview()
        }
    }
}
