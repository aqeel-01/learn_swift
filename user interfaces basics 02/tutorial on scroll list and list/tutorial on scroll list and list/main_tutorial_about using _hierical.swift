//
//  main_tutorial_about using _hierical.swift
//  tutorial on scroll list and list
//
//  Created by aqeel on 05/08/2024.
//

import SwiftUI

struct main_tutorial_about_using__hierical: View {
    
    let desserts = ["Apple Pie ","Carrot Cake","CheeseCake","ice Cream"]
    var body: some View {
        
        List{
            ForEach(desserts,id:\.self)
            {
                dessert in NavigationLink(destination:Color.gray)
                {
                    Text(dessert)
                        .font(.largeTitle)
                }
            }
        }

    }
}

#Preview {
    main_tutorial_about_using__hierical()
}
