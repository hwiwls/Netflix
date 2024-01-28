//
//  UIView+addSubViews.swift
//  Netflix
//
//  Created by hwijinjeong on 1/28/24.
//

import UIKit

extension UIView {
    func addSubviews(_ views: [UIView]) {
        views.forEach {
            addSubview($0)
        }
    }
}
