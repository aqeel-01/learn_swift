//
//  hieracical navigation02.swift
//  ex7navigation
//
//  Created by aqeel on 05/08/2024.
//

import SwiftUI

struct hieracical_navigation02: View {
    var body: some View {
        
        NavigationView{
            NavigationLink(destination:
            Image("littleLemonLogo"))
            {
                Text("Bistro menu")
                    .font(.title)
            }
            
            .navigationTitle("little lemon menus")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

#Preview {
    hieracical_navigation02()
}
