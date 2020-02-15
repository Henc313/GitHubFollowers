//
//  UITableView+Ext.swift
//  GitHubFollowers
//
//  Created by ♏︎ on 2/15/20.
//  Copyright © 2020 Henry Kivimaa. All rights reserved.
//

import UIKit

extension UITableView {
   
   func reloadDataOnMainThread() {
      DispatchQueue.main.async { self.reloadData() }
   }
   
   func removeExcessCells() {
      tableFooterView = UIView(frame: .zero)
   }
}
