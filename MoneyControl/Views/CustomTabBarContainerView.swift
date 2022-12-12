//
//  CustomTabBarContainerView.swift
//  MoneyControl
//
//  Created by Joseph  DeWeese on 12/12/22.
//

import SwiftUI



struct CustomTabBarContainerView<Content: View> : View {
    //MARK:     PROPERTIES
    @Binding var selection: TabBarItem
    
    @State private var tabs:  [TabBarItem] = [ ]
    
    let content: Content
    
    init(selection: Binding<TabBarItem>, @ViewBuilder content: ( ) -> Content) {
        self._selection = selection
        self.content = content ( )
    }
    
    var body: some View {
        VStack(spacing:  0) {
           ZStack {
                content
            }
            CustomTabBarView(tabs:  tabs, selection: $selection)
        }
        .onPreferenceChange(TabBarItemsPreferenceKey.self, perform: { value in
            self.tabs = value
        })
    }
}

struct CustomTabBarContainerView_Previews: PreviewProvider {
    
    static let tabs: [TabBarItem] = [
        .categories, .home, .reports, .goals
    ]
    static var previews: some View {
        CustomTabBarContainerView(selection:  .constant(tabs.first!)) {
            Color.red
        }
    }
}
