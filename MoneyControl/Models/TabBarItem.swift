//
//  TabBarItem.swift
//  MoneyControl
//
//  Created by Joseph  DeWeese on 12/12/22.
//

import Foundation
import SwiftUI



//struct TabBarItem: Hashable {
//    let iconName: String
//    let title: String
//    let color: Color
//}

enum TabBarItem:  Hashable {
    
case categories, home, reports, goals
    
    var iconName: String {
        switch self {
            
        case .categories: return "safari"
        case  .home:  return "house"
        case .reports: return "chart.bar.xaxis"
        case .goals: return "dollarsign.circle"
        }
    }
    var title: String {
        switch self {
            
        case .categories: return "Categories"
        case  .home:  return "Home"
        case .reports: return "Reports"
        case .goals: return "Goals"
            
        }
    }
    var color: Color {
        switch self {
            
        case .categories: return Color.blue
        case  .home:  return Color.red
        case .reports: return Color.indigo
        case .goals: return Color.green
            
        }
    }
    
}
