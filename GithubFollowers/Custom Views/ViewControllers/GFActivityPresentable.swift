//
//  GFActivityPresentable.swift
//  GithubFollowers
//
//  Created by Seba Gonzalez on 25/01/2024.
//

import UIKit

protocol ActivityPresentable {
    func showLoadingView()
    func dismissLoadingView()
}

extension ActivityPresentable where Self: UIViewController {
    internal func showLoadingView() {
        let loadingView = GFLoadingView(frame: view.bounds)
        
        loadingView.alpha = 0
        UIView.animate(withDuration: 0.25) { loadingView.alpha = 0.8 }
        loadingView.startAnimating()
        
        view.addSubview(loadingView)
    }
    
    internal func dismissLoadingView() {
        DispatchQueue.main.async { [weak self] in
            guard let self else { return }
            let loadingView = self.findActivity()
            loadingView?.removeFromSuperview()
        }
    }
    
    private func findActivity() -> GFLoadingView? {
        return view.subviews.compactMap { $0 as? GFLoadingView }.first
    }
}

