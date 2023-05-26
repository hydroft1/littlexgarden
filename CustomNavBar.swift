// created by Alexandre

import SwiftUI


///
struct CustomNavBar: View {
    @Binding var selectedTab: Tab
    private var fillImage: String {
        selectedTab.rawValue + ".fill"
    }
    
    private var tabColor: Color {
        switch selectedTab {
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
                    Image(systemName: selectedTab == tab ? fillImage : tab.rawValue)
                        .scaleEffect(tab == selectedTab ? 1.25 : 1.0)
                        .foregroundColor(selectedTab == tab ? tabColor : .white)
                        .font(.system(size: 22))
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.1)) {
                                selectedTab = tab
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

struct CustomNavBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavBar(selectedTab: .constant(.house))
    }
}
//
