//
//  UITableView+Ext.swift
//  GitHubFollowers
//
//  Created by Vitor Capretz on 23/06/22.
//

import UIKit

extension UITableView {
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
