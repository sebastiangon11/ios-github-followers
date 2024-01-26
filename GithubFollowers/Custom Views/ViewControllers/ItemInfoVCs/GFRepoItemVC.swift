//
//  GFRepoItemVC.swift
//  GithubFollowers
//
//  Created by Seba Gonzalez on 24/01/2024.
//

import UIKit

protocol GFRepoInfoVCDelegate: AnyObject {
    func didTapGitHubProfile(for user: User)
}

class GFRepoItemVC: GFItemInfoVC {
    weak var delegate: GFRepoInfoVCDelegate!
    
    init(user: User, delegate: GFRepoInfoVCDelegate) {
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
        itemInfoViewOne.set(itemInfoType: .repos, with: self.user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, with: self.user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
    }
    
    override func actionButtonTapped() {
        self.delegate.didTapGitHubProfile(for: self.user)
    }
}
