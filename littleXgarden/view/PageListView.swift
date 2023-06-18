//
//  PageListView.swift
//  littleXgarden
//
//  Created by Alexandre Marquet on 18/06/2023.
//

import SwiftUI

struct PageListView: View {
    
    @Environment(\.dismiss) var dismiss

    
    var body: some View {
        VStack{
            HStack(alignment: .center, spacing: 0.0){
                HStack(alignment: .center, spacing: 0.0){
                    CircleButton(action: {
                        dismiss()
                    }, image: "arrow.left")
                    Spacer()
                }
                Text("Page 1")
                    .foregroundColor(Color.white)
                    .padding(.trailing, 20.0)
            }
            Image("page1")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("background"))
        .navigationBarBackButtonHidden(true)
    }
        
}

struct PageListView_Previews: PreviewProvider {
    static var previews: some View {
        PageListView()
    }
}
