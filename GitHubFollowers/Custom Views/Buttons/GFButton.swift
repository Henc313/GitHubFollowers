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
   
   
   convenience init(backgroundColor: UIColor, title: String) {
      self.init(frame: .zero)
      configure()
      self.backgroundColor = backgroundColor
      self.setTitle(title, for: .normal)
   }
   
   
   private func configure() {
      layer.cornerRadius      = 10
      titleLabel?.font        = UIFont.preferredFont(forTextStyle: .headline)
      setTitleColor(.white, for: .normal)
      translatesAutoresizingMaskIntoConstraints = false
   }
   
   
   func set(backgroundColor: UIColor, title: String) {
      self.backgroundColor = backgroundColor
      setTitle(title, for: .normal)
   }
   
   
}
