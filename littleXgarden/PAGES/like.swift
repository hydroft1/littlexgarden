//
//  like.swift
//  littleXgarden
//
//  Created by Alexandre Marquet on 03/06/2023.
//

import SwiftUI

struct like: View {
    var body: some View {
        ZStack {
            Color("background")
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Hello world")
                    .foregroundColor(.white)
                    
                
            }

            
                
        }

    }
}

struct like_Previews: PreviewProvider {
    static var previews: some View {
        like()
    }
}
