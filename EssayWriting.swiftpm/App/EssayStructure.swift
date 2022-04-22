import SwiftUI

struct EssayStructure: View {
    
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        NavigationView {
            VStack {
                VStack{
                    Text("When it comes to writing an essay, the most basic essay is the 'Five-Paragraph Essay'.")
                        .fontWeight(.bold)
                        .font(.custom("Nunito", size:30))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .lineSpacing(10)
                        .padding()
                }
                NavigationLink(destination: IntroductionView()) {
                    Text("Introduction")
                        .font(.title)
                }
                NavigationLink(destination: BodyOneView()) {
                    Text("Body1")
                }
                NavigationLink(destination: BodyTwoView()) {
                    Text("Body2")
                }
                NavigationLink(destination: BodyThreeView()) {
                    Text("Body3")
                }
                NavigationLink(destination: ConclusionView()) {
                    Text("Conclusion")
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct EssayStructure_Previews: PreviewProvider {
    static var previews: some View {
        EssayStructure()
    }
}
