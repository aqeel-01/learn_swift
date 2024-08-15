//
//  LittlelemonResturant.swift
//  ex6viewwithinview
//
//  Created by aqeel on 05/08/2024.
//

import SwiftUI

struct LittlelemonResturant: View {
    
    @Binding var showLogo:Bool
    var body: some View {
       
        VStack{
            if showLogo{
                Image("littleLemonLogo")
            }
            
            Button(action:
                    {
                showLogo.toggle()
            }, label:
                    {
                Text("Toggle Logo   Visibility")
            })
        }
    }
}


struct LittlelemonResturant_Preview: View {
    @State private var showLogo = true
    
    var body: some View {
        LittlelemonResturant(showLogo: $showLogo)
    }
}

#Preview {
    LittlelemonResturant_Preview()
    
    
}
