// created by Alexandre

import SwiftUI

struct information: View {
    var body: some View {
        ZStack{
            VStack(){
                SearchBar(searchText: .constant(""))
                Text("Hello World")
            }

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
    
}

struct information_Previews: PreviewProvider {
    static var previews: some View {
        information()
    }
}
