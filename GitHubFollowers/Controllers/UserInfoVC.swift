//
//  UserInfoVC.swift
//  GitHubFollowers
//
//  Created by ♏︎ on 1/25/20.
//  Copyright © 2020 Henry Kivimaa. All rights reserved.
//

import UIKit

class UserInfoVC: UIViewController {
   
   var username: String!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      view.backgroundColor              = .systemBackground
      let doneButton                    = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
      navigationItem.rightBarButtonItem = doneButton
   }
   
   @objc func dismissVC() {
      dismiss(animated: true)
   }
}
