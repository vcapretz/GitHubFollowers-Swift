//
//  UIView+Ext.swift
//  GitHubFollowers
//
//  Created by Vitor Capretz on 22/06/22.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}
