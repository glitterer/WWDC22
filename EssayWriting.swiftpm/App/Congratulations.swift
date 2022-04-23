import SwiftUI

struct Congratulations: View {
    var body: some View {
        Text("Congratualations! \nYou are now able to write a Five Paragraph Essay! 👏👏👏 \n\nKeep up the Good Work~🙋‍♂️")
            .font(.custom("Helvetica", size:40))
            .fontWeight(.bold)
            .foregroundColor(Color.black)
            .multilineTextAlignment(.center)
            .frame(maxWidth: .infinity, alignment: .center)
            .padding()
            .cornerRadius(8)
    }
}

struct Congratulations_Previews: PreviewProvider {
    static var previews: some View {
        Congratulations()
    }
}
