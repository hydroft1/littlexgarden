// created by hydroft

import SwiftUI

struct mangaListView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
            ScrollView(showsIndicators: false){
                VStack{
                    VStack(alignment: .leading, spacing: 0.0){
                        HStack(alignment: .top, spacing: 0.0){
                            CircleButton(action: {
                                dismiss()
                            }, image: "arrow.left")
                            Spacer()
                        }
                        
                    }

                    Text("Manga")
                        .foregroundColor(Color.white)
                        .font(.title)
                        .bold()
                        .padding(.vertical, 24)
                        .padding(.horizontal, 16)
                    VStack(spacing: 18.0){
                        ForEach(scanList, id: \.name) { image in ScanList(scan: image)}
                    }
                    
                    
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("background"))
            .navigationBarBackButtonHidden(true)


    }

}

struct mangaview_Previews: PreviewProvider {
    static var previews: some View {
        mangaListView()
    }
}
