import SwiftUI

class AppState: ObservableObject {
    @Published var hasOnboarded: Bool
    init(hasOnboarded: Bool){
        self.hasOnboarded = hasOnboarded
    }
}

@main
struct EssayWritingApp: App {
    
    @ObservedObject var appState = AppState(hasOnboarded: false)
    
    let timer = Timer.publish(every: 2.0 , on: .main, in: .common).autoconnect()
    @State var count: Float = 2.0
    
    var body: some Scene {
        WindowGroup {
            SplashView()
            if appState.hasOnboarded{
                EssayStructure()
                    .environmentObject(appState)
            }
            else {
                EssayWritingtView()
                    .environmentObject(appState)
            }
        }
    }
}
