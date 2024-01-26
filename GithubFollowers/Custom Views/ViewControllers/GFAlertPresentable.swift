//
//  GFAlertPresentable.swift
//  GithubFollowers
//
//  Created by Seba Gonzalez on 26/01/2024.
//

import UIKit

protocol AlertPresentable {
    func presentGFAlert(title: String, message: String, buttonTitle: String)
}

extension AlertPresentable where Self: UIViewController {
    func presentGFAlert(title: String, message: String, buttonTitle: String) {
        let alertVC = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
        alertVC.modalPresentationStyle = .overFullScreen
        alertVC.modalTransitionStyle = .crossDissolve
        self.present(alertVC, animated: true)
    }
}
