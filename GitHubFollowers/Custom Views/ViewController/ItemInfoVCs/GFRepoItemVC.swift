//
//  GFRepoItemVC.swift
//  GitHubFollowers
//
//  Created by ♏︎ on 2/2/20.
//  Copyright © 2020 Henry Kivimaa. All rights reserved.
//

import UIKit

class GFRepoItemVC: GFItemInfoVC {
   
   override func viewDidLoad() {
      super.viewDidLoad()
      configureItems()
   }
   
   private func configureItems() {
      itemInfoViewOne.set(ItemInfoType: .repos, withCount: user.publicRepos)
      itemInfoViewTwo.set(ItemInfoType: .gists, withCount: user.publicGists)
      actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
   }
   
   override func actionButtonTapped() {
      delegate.didTapGitHubProfile(for: user)
   }
}
