//
//  Introduction.swift
//  EssayWriting
//
//  Created by Seik Oh on 2022/04/23.
//

import SwiftUI

struct IntroductionView: View {
    @State var isHidden = false
    
    var body: some View {
        ScrollView{
        ZStack{
            VStack{
                Text("Introduction")
                    .font(.custom("Helvetica", size:40))
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                //.background(Color.gray.opacity(0.25))
                    .cornerRadius(8)
                
                RoundedRectangle(cornerRadius: 25)
                    .inset(by: 3)
                    .stroke(Color.black, lineWidth: 5)
                    .frame(width: 800, height: 140)
                    .padding()
                    .overlay(Text("**Thesis Statement** \n1~2 supporting sentences \na sentence briefly talking about the bodies").font(.custom("Helvetica", size:25)).foregroundColor(.black).multilineTextAlignment(.center))
                //Spacer()
                
                VStack{
                    VStack{
                        Text("The first paragraph is like the advertisement of your whole essay. This is the part where you introduce your topic and catch the attention of the readers.  \nHere are some tips for you to structure you introductory paragraph.")
                            .font(.custom("Helvetica", size:25))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                        Text("✔︎ Writing a **thesis statement**, is crucial! A thesis statement is the first ever statement that the readers will read. It contains your main idea and can have a kind of **hook** to catch the readers' attention. \n")
                            .font(.custom("Helvetica", size:25))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)
                        Text("✔︎ Describe what you mean about your thesis statement in **1~2 sentences** (i.e this becomes the **supporting sentences**). The supporting sentences can also give a background view on what you wish to talk about, or why you wish to talk about that specific topic. \n")
                            .font(.custom("Helvetica", size:25))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding([.leading, .trailing])
                        Text("✔︎ The last sentence of the paragraph would be give a good connection to the body paragraphs. The tpyical method of this would to be **briefly talking about the body paragraphs through keywords.**\n")
                            .font(.custom("Helvetica", size:25))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding([.leading, .trailing])
                        Text("Geronimo! You have now understood how to write an **introductory paragraph!**\n")
                            .font(.custom("Helvetica", size:25))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding([.leading, .trailing])
                    }
                    Spacer()
                }
                VStack{
                    Spacer()
                    Button("Click here to look at an example of an introductory paragraph!") {isHidden.toggle()}
                        .font(.custom("Helvetica", size:25))
                    RoundedRectangle(cornerRadius: 25)
                        .inset(by: 3)
                        .stroke(Color.black, lineWidth: 5)
                        .frame(width: 800, height: 450)
                        .overlay(Text("**TODO: Example of a well written introductory paragraph.**").font(.custom("Helvetica", size:25)).foregroundColor(.black).multilineTextAlignment(.center))
                        .ignoresSafeArea()
                        .opacity(isHidden ? 1: 0)
                }
            }
        }
        }
    }
}

struct IntroductionView_Previews: PreviewProvider {
    static var previews: some View {
        IntroductionView()
    }
}
