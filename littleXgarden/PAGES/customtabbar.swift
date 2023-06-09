

// created by Alexandre

import SwiftUI


struct CustomTabBar: View {
    @Binding var currentTab: Tab
    private var fillImage: String {
        currentTab.rawValue + ".fill"
    }
    
    private var tabColor: Color {
        switch currentTab {
        case .house:
            return Color("green")
        case .book:
            return Color("green")
        case .person:
            return Color("green")
        }
    }
    
    var body: some View {
        VStack {
            HStack {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Spacer()
                    Image(systemName: currentTab == tab ? fillImage : tab.rawValue)
                        .scaleEffect(tab == currentTab ? 1.25 : 1.0)
                        .foregroundColor(currentTab == tab ? tabColor : .white)
                        .font(.system(size: 22))
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.1)) {
                                currentTab = tab
                            }
                        }
                    Spacer()
                    
                }
            }
            .frame(width: 200, height: 60)
            .background(Color("background2"))
            .cornerRadius(14)
            .padding()
        }
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(currentTab: .constant(.house))    }
}
