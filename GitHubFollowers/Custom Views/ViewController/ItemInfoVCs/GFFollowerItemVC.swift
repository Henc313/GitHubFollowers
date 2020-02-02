//
//  GFFollowerItemVC.swift
//  GitHubFollowers
//
//  Created by ♏︎ on 2/2/20.
//  Copyright © 2020 Henry Kivimaa. All rights reserved.
//

import UIKit

class GFFollowerItemVC: GFItemInfoVC {
   
   override func viewDidLoad() {
      super.viewDidLoad()
      configureItems()
   }
   
   private func configureItems() {
      itemInfoViewOne.set(ItemInfoType: .followers, withCount: user.followers)
      itemInfoViewTwo.set(ItemInfoType: .following, withCount: user.following)
      actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
   }
}
