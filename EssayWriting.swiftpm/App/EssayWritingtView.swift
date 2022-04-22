import SwiftUI

struct EssayWritingtView: View {
    @EnvironmentObject var appState: AppState
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var count: Float = 5.0
    @State var finishedText: String? = nil //optional string
    
    //Animation Properties
    @State var isAnimating = false
    @State var startAnimation = false
    @State var isFinished = false
    
    var body: some View {
        ZStack{
            VStack{
                Text("[ TODO: Let's put a pencil character image here ]")
                    .font(.title)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                Text(finishedText ?? "") //if no finished string, insert count
                    .font(.title)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .opacity(startAnimation ? 1: 0)
                
                if count <= 0 {
                    Button("Press  0to Proceed"){
                        appState.hasOnboarded = true //change the state
                    }
                }
            }
            .onReceive(timer, perform: {_ in
                if count == 5.0 {
                    count -= 1
                }
                else if count == 4.0{
                    count -= 1
                }
                else if count == 3.0 {
                    finishedText = "✏️This is an app✏️"
                    count -= 1
                }
                else if count == 2.0 {
                    finishedText = "✏️This is an app to study how to write✏️"
                    count -= 1
                }
                else {
                    finishedText = "✏️This is an app to study how to write a 5 paragraph essay!✏️"
                    count -= 1
                }
            })
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3){
                    withAnimation(.spring()){  //.linear(duration: 2)
                        startAnimation.toggle()
                    }
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 4.5){
                    withAnimation{
                        isFinished.toggle()
                    }
                }
            }
        }
    }
}

