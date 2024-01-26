//
//  GFFollowerItemVC.swift
//  GithubFollowers
//
//  Created by Seba Gonzalez on 24/01/2024.
//

import UIKit

protocol GFFollowerInfoVCDelegate: AnyObject {
    func didTapGetFollowers(for user: User)
}

class GFFollowerItemVC: GFItemInfoVC {
    weak var delegate: GFFollowerInfoVCDelegate!
    
    init(user: User, delegate: GFFollowerInfoVCDelegate) {
        super.init(user: user)
        self.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, with: self.user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, with: self.user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
    }

    override func actionButtonTapped() {
        self.delegate.didTapGetFollowers(for: self.user)
    }
}
