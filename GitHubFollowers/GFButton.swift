//
//  GFButton.swift
//  GitHubFollowers
//
//  Created by ♏︎ on 1/4/20.
//  Copyright © 2020 Henry Kivimaa. All rights reserved.
//

import UIKit

class GFButton: UIButton {
   
   override init(frame: CGRect) {
      super.init(frame: frame)
      configure()
   }
   
   required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
   
   init(backgroundColor: UIColor, title: String) {
      super.init(frame: .zero)
      configure()
      self.backgroundColor = backgroundColor
      self.setTitle(title, for: .normal)
   }
   
   private func configure() {
      layer.cornerRadius      = 10
      titleLabel?.textColor   = .white
      titleLabel?.font        = UIFont.preferredFont(forTextStyle: .headline)
      translatesAutoresizingMaskIntoConstraints = false
   }
}
