import SwiftUI

struct SplashView: View {
    @State var isActive:Bool = false
    
    var body: some View {
        VStack {
            if self.isActive {
                
            } else {
                Image("wwdc22logo")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300)
                    
                Text("Essay Writing!")
                    .font(Font.largeTitle)
                
                //TODO: Add scripling or typing sound effect
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
