//
//  ScanView.swift
//  littleXgarden
//
//  Created by Alexandre Marquet on 18/06/2023.
//

import SwiftUI

struct ScanView: View {
    var body: some View {
        ZStack{
                NavigationLink{
                    mangaview()
                } label: {
                    VStack{
                        ZStack{
                            Image(image.iconName)
                                .resizable()
                                .frame(width: 250, height: 250)
                                .cornerRadius(15)

                        }
                        .frame(width: 250, height: 250)
                        Text(image.name)
                            .font(.title2).bold()
                            .frame(maxWidth: 170, alignment: .center)
                            .foregroundColor(Color.white)
                    }
                    .padding()
                    .background(Color("background2"))
                    .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .shadow(color: Color("white").opacity(0.3), radius: 8, x:0, y:12)

                }
        }    }
}

struct ScanView_Previews: PreviewProvider {
    static var previews: some View {
        ScanView()
    }
}
