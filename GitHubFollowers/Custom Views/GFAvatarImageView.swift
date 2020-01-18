//
//  GFAvatarImageView.swift
//  GitHubFollowers
//
//  Created by ♏︎ on 1/11/20.
//  Copyright © 2020 Henry Kivimaa. All rights reserved.
//

import UIKit

class GFAvatarImageView: UIImageView {
   
   let placeholderImage = UIImage(named: "avatar-placeholder")!
   
   override init(frame: CGRect) {
      super.init(frame: frame)
      configure()
   }
   
   required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
   
   private func configure() {
      layer.cornerRadius = 10
      clipsToBounds      = true
      image              = placeholderImage
      translatesAutoresizingMaskIntoConstraints = false
   }
}
