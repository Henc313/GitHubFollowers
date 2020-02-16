//
//  UIView+Ext.swift
//  GitHubFollowers
//
//  Created by ♏︎ on 2/15/20.
//  Copyright © 2020 Henry Kivimaa. All rights reserved.
//

import UIKit

extension UIView {
   
   func addSubviews(_ views: UIView...) {
      for view in views { addSubview(view) }
   }
   
   func pinToEdges(of superview: UIView) {
      translatesAutoresizingMaskIntoConstraints = false
      
      NSLayoutConstraint.activate([
         topAnchor.constraint(equalTo: superview.topAnchor),
         leadingAnchor.constraint(equalTo: superview.leadingAnchor),
         trailingAnchor.constraint(equalTo: superview.trailingAnchor),
         bottomAnchor.constraint(equalTo: superview.bottomAnchor)
      ])
   }
   
   
}
