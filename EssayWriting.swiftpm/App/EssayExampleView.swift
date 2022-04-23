//
//  SwiftUIView.swift
//  
//
//  Created by Seik Oh on 2022/04/23.
//

import SwiftUI

struct EssayExampleView: View {
    var body: some View {
        VStack{
            Text("An Example Essay")
                .font(.custom("Helvetica", size:40))
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .cornerRadius(8)
                
        ZStack{
            RoundedRectangle(cornerRadius: 25)
                .inset(by: 3)
                .stroke(Color.black, lineWidth: 5)
                .frame(width: 900, height: 1150)
                .padding()
                .foregroundColor(.black)
            VStack{
                RoundedRectangle(cornerRadius: 25)
                    .inset(by: 3)
                    .stroke(Color.black, lineWidth: 5)
                    .frame(width: 800, height: 190)
                    .padding()
                    .overlay(Text("**Thesis Statement** + 1~2 supporting sentences \n+ a sentence briefly talking about the bodies").font(.custom("Helvetica", size:25)).foregroundColor(.black))
                
                
                RoundedRectangle(cornerRadius: 25)
                    .inset(by: 3)
                    .stroke(Color.darkCyan, lineWidth: 5)
                    .frame(width: 800, height: 190)
                    .padding()
                    .overlay(Text("**Topic Sentence** + 3 Detail Sentences").font(.custom("Helvetica", size:25)).foregroundColor(Color.darkCyan))
                
                
                
                RoundedRectangle(cornerRadius: 25)
                    .inset(by: 3)
                    .stroke(Color.charOrange, lineWidth: 5)
                    .frame(width: 800, height: 190)
                    .padding()
                    .overlay(Text("**Topic Sentence** + 3 Detail Sentences").font(.custom("Helvetica", size:25)).foregroundColor(Color.charOrange))
                
                
                
                
                RoundedRectangle(cornerRadius: 25)
                    .inset(by: 3)
                    .stroke(Color.mainGreen, lineWidth: 5)
                    .frame(width: 800, height: 190)
                    .padding()
                    .overlay(Text("**Topic Sentence** + 3 Detail Sentences").font(.custom("Helvetica", size:25)).foregroundColor(Color.mainGreen))
                
                
                
                
                RoundedRectangle(cornerRadius: 25)
                    .inset(by: 3)
                    .stroke(Color.black, lineWidth: 5)
                    .frame(width: 800, height: 190)
                    .padding()
                    .overlay(Text("**Concluding Sentence** + Summary").font(.custom("Helvetica", size:25)).foregroundColor(.black))
            }
        }
    }
    }
}


struct EssayExampleView_Previews: PreviewProvider {
    static var previews: some View {
        EssayExampleView()
    }
}
