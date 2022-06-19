//
//  GFFollowerItemViewController.swift
//  GitHubFollowers
//
//  Created by Vitor Capretz on 17/06/22.
//

import UIKit

class GFFollowerItemViewController: GFItemInfoViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "GitHub Followers")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGetFollowers(for: user)
    }
}
