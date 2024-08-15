//
//  extra_view.swift
//  tutorial on scroll list and list
//
//  Created by aqeel on 05/08/2024.
//

import SwiftUI

struct extra_view: View {
    
    let elements = ["Reservation","contacts","restuarant locations"]
    var body: some View {
        
        List{
            Section(header: Text("important information"))
            {
                Text("This list shows information about our resturant pages")
                    .font(.headline)
            }
            
            ForEach(elements, id: \.self)
            {
                element in Text(element)
            }
            
            Section(footer: Text("More Information"))
            {
                Text("Contact us as (212) 555 3231")
            }
        }
        .scrollContentBackground(.hidden)
        .padding()
    }
}

#Preview {
    extra_view()
}
