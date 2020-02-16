//
//  GFAlertContainerView.swift
//  GitHubFollowers
//
//  Created by ♏︎ on 2/13/20.
//  Copyright © 2020 Henry Kivimaa. All rights reserved.
//

import UIKit

class GFAlertContainerView: UIView {
   
   override init(frame: CGRect) {
      super.init(frame: frame)
   }
   
   
   required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
   
   
   private func configure() {
      backgroundColor      = .systemBackground
      layer.cornerRadius   = 16
      layer.borderWidth    = 2
      layer.borderColor    = UIColor.white.cgColor
      translatesAutoresizingMaskIntoConstraints = false
   }
   
   
}
