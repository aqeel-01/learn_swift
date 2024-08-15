//
//  TabView.swift
//  excercise on naviagtion
//
//  Created by aqeel on 05/08/2024.
//

import SwiftUI

struct C_TabView: View {
    var body: some View {
        
        
        Text("this is a another view")
        TabView {
                Text("")
                    .tabItem({
                        Label("share",systemImage: "square.and.arrow.up")
                    })
                
                Text("Trash Tab")
                    .tabItem({
                        Label("",systemImage:"trash")
                    })
            
        }
        
    }
}

#Preview {
    C_TabView()
}
