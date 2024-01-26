//
//  GFEmptyStatePresentable.swift
//  GithubFollowers
//
//  Created by Seba Gonzalez on 26/01/2024.
//

import UIKit

protocol EmptyStatePresentable {
    func showEmptyStateView(with message: String, in view: UIView)
}

extension EmptyStatePresentable where Self: UIViewController {
    func showEmptyStateView(with message: String, in view: UIView) {
        let emptyStateView = GFEmptyStateView(message: message)
        emptyStateView.frame = view.bounds
        view.addSubview(emptyStateView)
    }
}
