//
//  dragGestures.swift
//  tutorials on gestures
//
//  Created by aqeel on 05/08/2024.
//

import SwiftUI

struct dragGestures: View {
    
    @State private var offset = CGSize.zero
    var body: some View {
        
        Image("LittleLemon_Logo")
            .offset(x: offset.width, y: offset.height)
            .gesture(
            DragGesture()
                .onChanged{
                    gesture in offset = gesture.translation
                }
        )
    }
}

#Preview {
    dragGestures()
}
