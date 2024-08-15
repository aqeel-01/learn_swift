//
//  hierarchical navigation.swift
//  ex7navigation
//
//  Created by aqeel on 05/08/2024.
//

import SwiftUI

struct hierarchical_navigation: View {
    
    
    var body: some View {
        
        
        NavigationView{
            NavigationLink(destination:EmptyView())
            {
                Text("go to the little lemon reservation page")
                    .font(.title)
            }
            .navigationTitle("Reservation")
        }
    }
}

#Preview {
    hierarchical_navigation()
}
