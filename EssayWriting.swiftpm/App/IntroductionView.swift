//
//  Introduction.swift
//  EssayWriting
//
//  Created by Seik Oh on 2022/04/23.
//

import SwiftUI

struct IntroductionView: View {
    var body: some View {
        ZStack{
        RoundedRectangle(cornerRadius: 25)
                .inset(by: 3)
                .stroke(Color.black, lineWidth: 5)
                .frame(width: 800, height: 1200)
        Text("Hello, Let's talk about the Introduction!")
        }
    }
}

struct IntroductionView_Previews: PreviewProvider {
    static var previews: some View {
        IntroductionView()
    }
}
