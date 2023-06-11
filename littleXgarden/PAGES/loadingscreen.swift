//
//  loadingscreen.swift
//  littleXgarden
//
//  Created by Alexandre Marquet on 11/06/2023.
//

import SwiftUI

struct loadingscreen: View {
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack{
                VStack{
                    Image("icon")
                    Text("littleXgarden")
                        .font(.custom("Helvetica-Bold", size: 30))
                        .foregroundColor(.white.opacity(0.80))
                    
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("background"))
            .ignoresSafeArea()
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.isActive = true
                }
            }

        }
        
    }

}

struct loadingscreen_Previews: PreviewProvider {
    static var previews: some View {
        loadingscreen()
    }
}
