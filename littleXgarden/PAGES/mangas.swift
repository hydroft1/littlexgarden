// created by Alexandre

import SwiftUI

struct mangas: View {
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack{
                Text("Manga")
                    .font(.title)
                    .bold()
                    .padding(.vertical, 24)
                    .padding(.horizontal, 16)
                ForEach(imagelist, id: \.name) { image in Vcard(image: image)}
                    
            }
        }

    }
}

struct mangas_Previews: PreviewProvider {
    static var previews: some View {
        mangas()
    }
}
