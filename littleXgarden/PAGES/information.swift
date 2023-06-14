// created by hydroft

import SwiftUI

struct information: View {
    var body: some View {
        ZStack{
            VStack(){
                SearchBar()
                VStack{
                    NavigationLink{
                        equipeview()
                    } label: {
                        Text("Notre équipe")
                            .font(.title3.bold())
                            .padding(.vertical,22)
                            .frame(width: 200, height: 60)
                            .foregroundColor(.white)
                            .background(
                                ZStack {
                                    Color("background")
                                }
                            )
                            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                            .shadow(color: Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 0.2)), radius: 20, x: 10, y: 10)
                            .shadow(color: Color(#colorLiteral(red: 255, green: 255, blue: 255, alpha: 0.2)), radius: 20, x: -0, y: -10)
                    }
                    .padding(.horizontal, 50)
                    
                }
            }

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .multilineTextAlignment(.center)
        .background(Color("background"))
        
    }
    
}

struct information_Previews: PreviewProvider {
    static var previews: some View {
        information()
    }
}
