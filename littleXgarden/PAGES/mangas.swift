// created by Alexandre

import SwiftUI

struct mangas: View {
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack{
                VStack{
                    SearchBar(searchText: .constant(""))
                }
                Text("Manga")
                    .foregroundColor(Color.white)
                    .font(.title)
                    .bold()
                    .padding(.vertical, 24)
                    .padding(.horizontal, 16)
                VStack(spacing: 18.0){

                    ForEach(imagelist, id: \.name) { image in Vcard(image: image)}
                }

                    
                    
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("background"))
        
    }
}

struct mangas_Previews: PreviewProvider {
    static var previews: some View {
        mangas()
    }
}
