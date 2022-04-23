//
//  ConclusionView.swift
//  EssayWriting
//
//  Created by Seik Oh on 2022/04/23.
//

import SwiftUI

struct ConclusionView: View {
    @State var isHidden = false
    
    var body: some View {
        ZStack{
            VStack{
                Text("Conclusion")
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
                    .overlay(Text("**Concluding Sentence** + Summary").font(.custom("Helvetica", size:25)).foregroundColor(.black))
                
                VStack{
                    VStack{
                        Text("A concluding paragraph should have a summary of the whole essay. In a way, this might be the most difficult part of the whole essay. The conclusion should be able to restate the thesis statement from the introductory paragraph. It should also have all the points of the body and explain how each idea supports the thesis. It is also important to NOT give any new information. All should be from the essay you have already written. \nHere are some tips for writing a good conclusion: ")
                            .font(.custom("Helvetica", size:25))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                        Text("✔︎ The first sentence should be used to restate your claims and ideas related to the thesis. Use your introductory paragraph as your guide. Revisit your introductory paragraph to keep track of the flow of your essay. \n")
                            .font(.custom("Helvetica", size:25))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)
                        Text("✔︎ Give your readers some space to conceive your ideas. Make your readers be really engaged in your essay. \n")
                            .font(.custom("Helvetica", size:25))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding([.leading, .trailing])
                        Text("✔︎ Make sure your conclusion 'wraps up' all your ideas and make sure you have accomplished what you have been writing for!\n")
                            .font(.custom("Helvetica", size:25))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding([.leading, .trailing])
                        Text("Fantastic! You have now understood how to write a **concluding paragraph!** \n")
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
                Button("Click here to look at an example of an concluding paragraph!") {isHidden.toggle()}
                    .font(.custom("Helvetica", size:25))
                RoundedRectangle(cornerRadius: 25)
                    .inset(by: 3)
                    .stroke(Color.black, lineWidth: 5)
                    .frame(width: 800, height: 450)
                    .overlay(Text("**TODO: Example of a well written Concluding paragraph.**").font(.custom("Helvetica", size:25)).foregroundColor(.black).multilineTextAlignment(.center))
                    .ignoresSafeArea()
                    .opacity(isHidden ? 1: 0)
            }
        }
    }
}

struct ConclusionView_Previews: PreviewProvider {
    static var previews: some View {
        ConclusionView()
    }
}
