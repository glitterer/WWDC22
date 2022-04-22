import SwiftUI

struct EssayStructure: View {
    
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        Text("A Five Paragraph Essay is ")
    }
}

struct EssayStructure_Previews: PreviewProvider {
    static var previews: some View {
        EssayStructure()
    }
}
