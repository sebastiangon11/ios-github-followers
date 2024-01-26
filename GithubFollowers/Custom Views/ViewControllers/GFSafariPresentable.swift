//
//  GFSafariPresentable.swift
//  GithubFollowers
//
//  Created by Seba Gonzalez on 26/01/2024.
//

import Foundation
import SafariServices

protocol SafariPresentable {
    func presentSafariVC(with url: URL)
}

extension SafariPresentable where Self: UIViewController {
    func presentSafariVC(with url: URL) {
        let safariVC = SFSafariViewController(url: url)
        safariVC.preferredControlTintColor = .systemGreen
        present(safariVC, animated: true)
    }
}
