// created by Alexandre

import SwiftUI

struct home: View {
    
    @State private var selectedTab : Tab = .house
    
    var body: some View {
        ZStack {
            VStack(spacing: 20.0) {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 20.0) {
                        scrollsection(title: "Vos favoris")
                        scrollsection( icontitle: ["last"] ,title: "Les dernières sorties")
                        scrollsection(icontitle: ["news"], title: "Les News")
                
                    }
                }
            }
            
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            
        }
        .padding(.top, 15.0)
        .background(Color("background"))
    }
        
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}
