//
//  BodyTwoView.swift
//  EssayWriting
//
//  Created by Seik Oh on 2022/04/23.
//

import SwiftUI

struct BodyTwoView: View {
    @State var isHidden = false
    
    var body: some View {
        ZStack{
            VStack{
                Text("Body2")
                    .font(.custom("Helvetica", size:40))
                    .fontWeight(.bold)
                    .foregroundColor(Color.charOrange)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                //.background(Color.gray.opacity(0.25))
                    .cornerRadius(8)
                
                RoundedRectangle(cornerRadius: 25)
                    .inset(by: 3)
                    .stroke(Color.charOrange, lineWidth: 5)
                    .frame(width: 800, height: 140)
                    .padding()
                    .overlay(Text("**Topic Sentence** + 3 Detail Sentences").font(.custom("Helvetica", size:25)).foregroundColor(Color.charOrange))
            
                
                VStack{
                    VStack{
                        Text("As mentioned in the Body 1 Paragraph, the body is where your main points and their detail (i.e supporting) sentences are written. Since we are putting our most important main idea in body 1, body 2 would contain the second most important main idea of the essay. \nThe ways of writing a body 2 paragraph is the same as body 1. The tips are as follows: ")
                            .font(.custom("Helvetica", size:25))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                        Text("✔︎ Write a topic sentence that summarizes your point. It would be best to contain the keyword that you mentioned in your introductory paragraph.\n")
                            .font(.custom("Helvetica", size:25))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)
                        Text("✔︎ Write 3 detail sentences using examples, citations, quotes, statistics, facts, etc.\n")
                            .font(.custom("Helvetica", size:25))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding([.leading, .trailing])
                        Text("✔︎ The last sentence should be able to connect to the next paragraph (i.e body 3)\n")
                            .font(.custom("Helvetica", size:25))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding([.leading, .trailing])
                        Text("Voilla! You have now understood how to write an **Body 2 paragraph!**\n")
                            .font(.custom("Helvetica", size:25))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding([.leading, .trailing])
                    }
                    Spacer()
                }
            }
            VStack{
                Spacer()
                Button("Click here to look at an example of a Body 2 paragraph!") {isHidden.toggle()}
                    .font(.custom("Helvetica", size:25))
                RoundedRectangle(cornerRadius: 25)
                    .inset(by: 3)
                    .stroke(Color.charOrange, lineWidth: 5)
                    .frame(width: 800, height: 450)
                    .overlay(Text("**This is an example of a body 2 paragraph**").font(.custom("Helvetica", size:25)).foregroundColor(Color.charOrange))
                    .ignoresSafeArea()
                    .opacity(isHidden ? 1: 0)
            }
        }
    }
}

struct BodyTwoView_Previews: PreviewProvider {
    static var previews: some View {
        BodyTwoView()
    }
}
