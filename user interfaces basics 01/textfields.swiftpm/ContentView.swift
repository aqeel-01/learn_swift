import SwiftUI

struct ContentView: View {
    @State var inputValue: String = ""
    
    var body: some View {
        TextField("Type your Name ",
                  text:$inputValue)
        .onChange(of:inputValue,
                  perform:{newValue in
            print(newValue)
        })
        
        .onSubmit({
            print("submitted")
        })
        .padding()
        
    }
}


/*
struct ContentView: View {
    var body: some View {
        
     let sophisticatedString = try!
        AttributedString(
            markdown: "Sign up to our Newsletter and get **30%** off"
        )
        
        Text(sophisticatedString)
            .font(.system(size:36,
                          weight:.light,
                          design:.serif
                          ))
            .italic()
            .lineLimit(1)
        
    }
    
}
        
*/
struct ContentView_previews:PreviewProvider
{
    static var previews: some View
    {
        ContentView()
    }
}
