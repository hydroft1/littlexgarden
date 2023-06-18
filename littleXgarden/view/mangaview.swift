//
//  mangaview.swift
//  littleXgarden
//
//  Created by Alexandre Marquet on 15/06/2023.
//

import SwiftUI

struct mangaview: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            VStack(spacing: 18.0){

                ForEach(imagelist, id: \.name) { image in Vcard(image: image)}
            }
            
            
            
            
            
            
            
            
            
            
            
            
            VStack(spacing: 0.0){
                HStack(alignment: .center, spacing: 0.0){
                    CircleButton(action: {
                        dismiss()
                    }, image: "arrow.left")
                }
                
                
            }
            .padding([.top, .leading], 50.0)
            .frame(maxWidth: .nan,maxHeight: .infinity, alignment: .topLeading)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("background"))
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }
}

struct mangaview_Previews: PreviewProvider {
    static var previews: some View {
        mangaview()
    }
}
