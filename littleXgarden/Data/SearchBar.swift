// created by Alexandre

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    
    var body: some View {
        
        HStack{
            Image(systemName: "magnifyingglass")
            
            TextField("Chercher un manga", text: $searchText)
                .overlay(
                    Image(systemName: "xmark.circle.fill")
                        .padding()
                        .offset(x: 10)
                        .opacity(searchText.isEmpty ? 0.0: 1.0)
                    ,alignment: .trailing
                )
        }
        .font(.headline)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color("white"))
                .shadow(
                    color: .black.opacity(0.25),
                    radius: 10, x:0, y:0)
        )
        .padding()
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            SearchBar(searchText: .constant(""))
        }
        
    }
}
