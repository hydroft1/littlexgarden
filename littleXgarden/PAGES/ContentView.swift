// created by Alexandre

import SwiftUI


struct ContentView: View {
    @State private var currentTab : Tab = .house
    
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    
    var body: some View {
        
        NavigationView() {
            VStack(spacing: 0.0) {
                TabView(selection: $currentTab) {
                    home()
                        .tag(Tab.house)
                    mangas()
                        .tag(Tab.book)
                    information()
                        .tag(Tab.person)
                    
                    
                }
                CustomTabBar(currentTab: $currentTab)
                    .frame(maxWidth: .infinity)
                    .background(Color("background"))
                
            } 
            .ignoresSafeArea()
        .ignoresSafeArea(.keyboard)
        }
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
