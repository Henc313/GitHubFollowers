//
//  FollowerListVC.swift
//  GitHubFollowers
//
//  Created by ♏︎ on 1/4/20.
//  Copyright © 2020 Henry Kivimaa. All rights reserved.
//

import UIKit

class FollowerListVC: UIViewController {
   
   var username: String!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      view.backgroundColor = .systemBackground
      navigationController?.isNavigationBarHidden = false
      navigationController?.navigationBar.prefersLargeTitles = true
   }
}
