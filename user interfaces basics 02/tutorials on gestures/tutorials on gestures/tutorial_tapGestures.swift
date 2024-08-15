//
//  tutorial_tapGestures.swift
//  tutorials on gestures
//
//  Created by aqeel on 05/08/2024.
//

import SwiftUI

struct tutorial_tapGestures: View {
    var body: some View {
       
        Text("Tap for reservation")
            .onTapGesture{
                print("Text tapped!")
            }
        
    }
}

#Preview {
    tutorial_tapGestures()
}
