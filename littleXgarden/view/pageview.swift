// created by Alexandre


import SwiftUI

struct pageview: View {
    var body: some View {
        ZStack{
            Image("poster1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxHeight: .infinity, alignment: .top)
            
        }
        .background(Color("background"))
        .ignoresSafeArea()
    }
}

struct pageview_Previews: PreviewProvider {
    static var previews: some View {
        pageview()
    }
}
