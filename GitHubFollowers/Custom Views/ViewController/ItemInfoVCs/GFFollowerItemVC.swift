//
//  GFFollowerItemVC.swift
//  GitHubFollowers
//
//  Created by ♏︎ on 2/2/20.
//  Copyright © 2020 Henry Kivimaa. All rights reserved.
//

import UIKit

protocol GFFollowerItemVCDelegate: class {
   func didTapGetFollowers(for user: User)
}

class GFFollowerItemVC: GFItemInfoVC {
   
   weak var delegate: GFFollowerItemVCDelegate!
   
   
   init(user: User, delegate: GFFollowerItemVCDelegate) {
      super.init(user: user)
      self.delegate = delegate
   }
   
   
   required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
   
   
   override func viewDidLoad() {
      super.viewDidLoad()
      configureItems()
   }
   
   
   private func configureItems() {
      itemInfoViewOne.set(ItemInfoType: .followers, withCount: user.followers)
      itemInfoViewTwo.set(ItemInfoType: .following, withCount: user.following)
      actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
   }
   
   
   override func actionButtonTapped() {
      delegate.didTapGetFollowers(for: user)
   }
}


