//
//  Vcard.swift
//  littleXgarden
//
//  Created by Alexandre Marquet on 13/06/2023.
//

import SwiftUI

struct Vcard: View {
    let image : imageCurrency
    
    var body: some View {
        VStack{
            Image(image.iconName)
                .resizable()
                .frame(maxWidth: 300, maxHeight: 250)
            Text(image.name)
                .font(.title2).bold()
                .frame(maxWidth: 170, alignment: .center)
                .foregroundColor(Color.white)
                
            
        }
        .padding(30)
        .background(Color("background2"))
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(color: Color("background2").opacity(0.3), radius: 8, x:0, y:12)
    }
}

struct Vcard_Previews: PreviewProvider {
    static var previews: some View {
        Vcard(image: imagelist[0])
    }
}
