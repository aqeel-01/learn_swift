//
//  ContentView.swift
//  ex6viewwithinview
//
//  Created by aqeel on 05/08/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var showLogo = true
    var body: some View {
        LittlelemonResturant(showLogo: $showLogo)
        EmptyView()
        
    }
}

#Preview {
    ContentView()
}
