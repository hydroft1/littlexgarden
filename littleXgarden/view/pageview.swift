// created by Alexandre


import SwiftUI

extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }
    
    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}


struct pageview: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            Image("poster2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxHeight: .infinity, alignment: .top)
            VStack(alignment: .center, spacing: 0.0){
                HStack(spacing: 0.0){
                    CircleButton(action: {
                        dismiss()
                    }, image: "arrow.left")
                    
                    
                    
                    
                }
                .padding([.top, .leading], 50.0)
                
            }
            .padding(.leading, 16.0)
            .frame(maxWidth: .nan, maxHeight: .infinity, alignment: .topLeading)
        }
        .background(Color("background"))
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }
    
}

struct pageview_Previews: PreviewProvider {
    static var previews: some View {
        pageview()
    }
}
