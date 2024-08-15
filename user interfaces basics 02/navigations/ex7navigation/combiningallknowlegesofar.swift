//
//  combiningallknowlegesofar.swift
//  ex7navigation
//
//  Created by aqeel on 05/08/2024.
//

import SwiftUI

struct combiningallknowlegesofar: View {
    var body: some View {
        
        
        NavigationView{
            VStack{
                Text("select your personal menu")
                    .font(.title)
                NavigationLink(destination:
                                Color.green)
                {
                    Text("Bistro menu")
                        .font(.title)
                        .foregroundColor(.green)
                }
                
                
                NavigationLink(destination:
                                Color.yellow)
                {
                    Text("Takeaway menu")
                        .font(.title)
                        .foregroundColor(.yellow)
                }
                
            }
        }
    }
}

#Preview {
    combiningallknowlegesofar()
}
