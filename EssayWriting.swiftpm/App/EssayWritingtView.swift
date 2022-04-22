import SwiftUI

struct EssayWritingtView: View {
    
    let timer = Timer.publish(every: 1.5, on: .main, in: .common).autoconnect()
    @State var count: Float = 4.5
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
            }
            .onReceive(timer, perform: {_ in
                if count == 4.5{
                    finishedText = "✏️This is an app✏️"
                    count -= 1.5
                }
                else if count == 3.0 {
                    finishedText = "✏️This is an app to study how to write✏️"
                    count -= 1.5
                }
                else {
                    finishedText = "✏️This is an app to study how to write a 5 paragraph essay!✏️"
                    count -= 1.5
                }
            })
        }
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

