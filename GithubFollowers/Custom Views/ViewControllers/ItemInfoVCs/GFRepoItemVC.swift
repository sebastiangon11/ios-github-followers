//
//  GFRepoItemVC.swift
//  GithubFollowers
//
//  Created by Seba Gonzalez on 24/01/2024.
//

import UIKit

class GFRepoItemVC: GFItemInfoVC {
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
