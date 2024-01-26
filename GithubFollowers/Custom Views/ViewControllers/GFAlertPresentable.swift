//
//  GFAlertPresentable.swift
//  GithubFollowers
//
//  Created by Seba Gonzalez on 26/01/2024.
//

import UIKit

protocol AlertPresentable {
    func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String)
}

extension AlertPresentable where Self: UIViewController {
    func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
}
