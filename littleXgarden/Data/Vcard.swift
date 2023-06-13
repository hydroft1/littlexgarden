//
//  Vcard.swift
//  littleXgarden
//
//  Created by Alexandre Marquet on 13/06/2023.
//

import SwiftUI

struct Vcard: View {
    var body: some View {
        VStack{
            Text("Animation in swiftui")
                .font(.title2).bold()
                .frame(maxWidth: 170, alignment: .center)
            Text("Build and animate an IOS app from scratch")
                .opacity(0.7)
                .font(.subheadline)
            Text("20 SECTIONS - 3 HOURS".uppercased())
                .font(.footnote)
                
            
        }
        .padding(30)
        .background(Color("background2"))
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(color: Color("background2").opacity(0.3), radius: 8, x:0, y:12)
    }
}

struct Vcard_Previews: PreviewProvider {
    static var previews: some View {
        Vcard()
    }
}
