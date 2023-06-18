//
//  ScanList.swift
//  littleXgarden
//
//  Created by Alexandre Marquet on 18/06/2023.
//

import SwiftUI

struct ScanList: View {
    let scan : ScanCurrency
    
    var body: some View {
        ZStack{
                NavigationLink{
                    mangaListView()
                } label: {
                    VStack{
                        ZStack{
                            Image(scan.image)
                                .resizable()
                                .frame(width: 250, height: 250)
                                .cornerRadius(15)

                        }
                        .frame(width: 250, height: 250)
                        Text(scan.name)
                            .font(.title2).bold()
                            .frame(maxWidth: 170, alignment: .center)
                            .foregroundColor(Color.white)
                        Text(scan.ep)
                            .font(.title2).bold()
                            .frame(maxWidth: 170, alignment: .center)
                            .foregroundColor(Color.white)
                    }
                    .padding()
                    .background(Color("background2"))
                    .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .shadow(color: Color("white").opacity(0.3), radius: 8, x:0, y:12)

                }
        }
    }
}

struct ScanList_Previews: PreviewProvider {
    static var previews: some View {
        ScanList(scan: scanList[0])
    }
}
