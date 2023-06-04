// created by Alexandre

import SwiftUI

struct scrollsection: View {
    
    @State var icontitle: [String] = ["like"]
    @State var title = "Now Playing"
    @State var Like: [String] = ["poster1", "poster2", "poster3", "poster4", "poster5"]
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Text(title)
                    .font(.title)
                    .foregroundColor(Color.white)
                    .padding(.horizontal, 20)
                    .fontWeight(.bold)
                ForEach(icontitle.indices, id: \.self) { index in
                    Image(icontitle[index])
                }
            }

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20.0){
                    ForEach(Like.indices, id: \.self) { index in
                        NavigationLink{
                            Text("pageview")
                        } label: {
                            Image(Like[index])
                                .resizable()
                                .frame(width: 100, height: 130)
                                .cornerRadius(20)
                        }
                        
                    }
                }
                .offset(x : 20)
                .padding(.trailing, 40)
            }
        }

    }
}

struct scrollsection_Previews: PreviewProvider {
    static var previews: some View {
        scrollsection()
    }
}
