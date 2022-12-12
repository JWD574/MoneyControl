//
//  AppTabBarView.swift
//  MoneyControl
//
//  Created by Joseph  DeWeese on 12/12/22.
//

import SwiftUI

struct AppTabBarView: View {
    //MARK: PROPERTIES
    @State private var selection:  String = "home"
    @State private var tabSelection: TabBarItem =  .home
    
    var body: some View {
        CustomTabBarContainerView(selection:  $tabSelection) {
            
          CategoryView()
           
                .tabBarItem(tab:  .categories,  selection: $tabSelection)
            
           HomeView()
                .tabBarItem(tab:  .home,  selection: $tabSelection)
            
           ReportsView()
                .tabBarItem(tab:  .reports,  selection: $tabSelection)
            
          GoalView()
                .tabBarItem(tab:  .goals,  selection: $tabSelection)
        }
    }
}

struct AppTabBarView_Previews: PreviewProvider {
   
    static var previews: some View {
        AppTabBarView()
    }
}
extension AppTabBarView {
    
    private var defaultTabView: some View  {
        
        TabView(selection: $selection) {
            
            CategoryView()
                .tabItem {
                    Image(systemName: "safari")
                    Text("Categories")
                }
           HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            ReportsView()
                .tabItem {
                    Image(systemName: "chart.bar.xaxis")
                    Text("Reports")
                }
            GoalView()
                .tabItem {
                    Image(systemName: "dollarsign.circle")
                    Text("Goals")
                }
        }
    }
}
