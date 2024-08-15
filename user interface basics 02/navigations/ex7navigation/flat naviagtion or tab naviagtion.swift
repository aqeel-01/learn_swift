//
//  flat naviagtion or tab naviagtion.swift
//  ex7navigation
//
//  Created by aqeel on 05/08/2024.
//

import SwiftUI

struct flat_naviagtion_or_tab_naviagtion: View {
    var body: some View {
        
        
        
        TabView{
            Text("Home page")
                .font(.title)
                .tabItem( {
                    Label("Home",
                          systemImage:"house")
                })
            
            Text("Menu page")
                .font(.title)
                .badge(2)
                .tabItem( {
                    Label("menu",
                          systemImage:"menucard")
                })
        }
        
        
    }
}

#Preview {
    flat_naviagtion_or_tab_naviagtion()
}
