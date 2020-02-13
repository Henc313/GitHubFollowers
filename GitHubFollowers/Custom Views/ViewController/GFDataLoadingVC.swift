//
//  GFDataLoadingVC.swift
//  GitHubFollowers
//
//  Created by ♏︎ on 2/13/20.
//  Copyright © 2020 Henry Kivimaa. All rights reserved.
//

import UIKit

class GFDataLoadingVC: UIViewController {
   
   fileprivate var containerView: UIView!
   
   override func viewDidLoad() {
      super.viewDidLoad()
   }
   
   func showLoadingView() {
      containerView = UIView(frame: view.bounds)
      view.addSubview(containerView)
      
      containerView.backgroundColor = .systemBackground
      containerView.alpha           = 0
      
      UIView.animate(withDuration: 0.25) { self.containerView.alpha = 0.8 }
      
      let activityIndicator = UIActivityIndicatorView(style: .large)
      containerView.addSubview(activityIndicator)
      
      activityIndicator.translatesAutoresizingMaskIntoConstraints = false
      
      NSLayoutConstraint.activate([
         activityIndicator.centerYAnchor.constraint(equalTo: view.centerYAnchor),
         activityIndicator.centerXAnchor.constraint(equalTo: view.centerXAnchor)
      ])
      
      activityIndicator.startAnimating()
   }
   
   func dismissLoadingView() {
      DispatchQueue.main.async {
         self.containerView.removeFromSuperview()
         self.containerView = nil
      }
   }
   
   func showEmptyStateView(with message: String, in view: UIView) {
      let emptyStateView = GFEmptyStateView(message: message)
      emptyStateView.frame = view.bounds
      view.addSubview(emptyStateView)
   }
}
