/*
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
 */

import SwiftUI

struct Congratulations: View {
    let textSize: Double = 40
    
    var body: some View {
        VStack{
            BlinkingWithBlur(text: "Congratualations!",
                             fontName: "Didot",
                             textSize: textSize,
                             startTime: 0.1)
            BlinkingWithBlur(text: "You are now able to write",
                             fontName: "Didot",
                             textSize: textSize,
                             startTime: 0.2)
            BlinkingWithBlur(text: "a Five Paragraph Essay!",
                             fontName: "Didot",
                             textSize: textSize,
                             startTime: 0.3)
            BlinkingWithBlur(text: " 👏👏👏 ",
                             fontName: "Didot",
                             textSize: textSize,
                             startTime: 0.4)
            BlinkingWithBlur(text: "Keep up the Good Work~",
                             fontName: "Didot",
                             textSize: textSize,
                             startTime: 0.5)
            .padding(.top,50)
            BlinkingWithBlur(text: "🙋‍♂️🙋‍♂️🙋‍♂️",
                             fontName: "Didot",
                             textSize: textSize,
                             startTime: 0.6)
        }
    }
}

struct BlinkingWithBlur: View {
    let characters: Array<String.Element>
    let fontName: String
    let baseTime: Double
    let textSize: Double
    
    @State var blurValue: Double = 5
    @State var opacity: Double = 0
    
    init(text:String, fontName: String, textSize: Double, startTime: Double) {
        self.characters = Array(text)
        self.fontName = fontName
        self.textSize = textSize
        self.baseTime = startTime
    }
    
    var body: some View {
        
        HStack(spacing: 0.5){
            ForEach(0..<characters.count) { num in
                ZStack{
                    Text(String(self.characters[num]))
                        .font(.custom(fontName, fixedSize: textSize * 1.0))
                        .blur(radius: blurValue)
                        .opacity(opacity)
                        .animation(.easeInOut.delay( baseTime + Double(num) * 0.5 * Double.random(in: 0.003...0.55)),
                                   value: blurValue)
                    
                    Text(String(self.characters[num]))
                        .font(.custom(fontName, fixedSize: textSize * 0.9))
                        .blur(radius: blurValue)
                        .foregroundColor(.white)
                        .opacity(opacity)
                        .animation(.easeInOut.delay( baseTime + Double(num) * 0.5 * Double.random(in: 0.003...0.55)),
                                   value: blurValue)
                    
                    Text(String(self.characters[num]))
                        .font(.custom(fontName, fixedSize: textSize*1.0))
                        .blur(radius: blurValue)
                        .opacity(opacity)
                        .animation(.easeInOut.delay( baseTime + Double(num) * 1 * Double.random(in: 0.10...0.3)),
                                   value: blurValue)
                }
            }
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + baseTime) {
                if blurValue == 0{
                    blurValue = 5
                    opacity = 0.01
                } else {
                    blurValue = 0
                    opacity = 1
                }
            }
        }
    }
}

struct Congratulations_Previews: PreviewProvider {
    static var previews: some View {
        Congratulations()
    }
}

