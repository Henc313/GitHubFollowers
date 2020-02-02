//
//  Date+Ext.swift
//  GitHubFollowers
//
//  Created by ♏︎ on 2/2/20.
//  Copyright © 2020 Henry Kivimaa. All rights reserved.
//

import Foundation

extension Date {
   
   func convertToMonthYearFormat() -> String {
      let dateFormatter        = DateFormatter()
      dateFormatter.dateFormat = "MMM yyyy"
      
      return dateFormatter.string(from: self)
   }
   
}
