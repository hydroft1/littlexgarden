//
//  ViewC.swift
//  littleXgarden
//
//  Created by Alexandre Marquet on 03/06/2023.
//

import SwiftUI

struct ViewC: View {
    var body: some View {
        ZStack {
            Color.green
            
            Image(systemName: "slider.horizontal.3")
                .foregroundColor(Color.white)
                .font(.system(size: 100.0))
                
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)

    }
    
}

struct ViewC_Previews: PreviewProvider {
    static var previews: some View {
        ViewC()
    }
}
