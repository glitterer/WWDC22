import SwiftUI

struct BodyOneView: View {
    @State var isHidden = false
    
    var body: some View {
        ScrollView{
        ZStack{
            VStack{
                Text("Body 1")
                    .font(.custom("Helvetica", size:40))
                    .fontWeight(.bold)
                    .foregroundColor(Color.darkCyan)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .cornerRadius(8)
                
                RoundedRectangle(cornerRadius: 25)
                    .inset(by: 3)
                    .stroke(Color.darkCyan, lineWidth: 5)
                    .frame(width: 800, height: 140)
                    .padding()
                    .overlay(Text("**Topic Sentence** + 3 Detail Sentences").font(.custom("Helvetica", size:25)).foregroundColor(Color.darkCyan))
            
                
                VStack{
                    VStack{
                        Text("The second, third, and fourth paragraph are your body. This is where your main points and their detail (i.e supporting) sentences are written. From here there is an option on how you would want to prioritize your main ideas. \n\n**Option 1**: Put your most important main idea in body 1, and least important in body 3. \n**Option 2**: Put your least important idea at body 1, and most important at body 3.\n\nIf you are a beginner of writing an essay, it is recommended to take **Option 1** as it is keeps the reader interested at the start of the essay, rather than having the reader stop from the start. **Therefore, this app will be explaining from Option 1's point of view.** \nHere are some tips for writing a body 1 paragraph: ")
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
                        Text("✔︎ The last sentence should be able to connect to the next paragraph (i.e body 2)\n")
                            .font(.custom("Helvetica", size:25))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding([.leading, .trailing])
                        Text("Voilla! You have now understood how to write an **Body 1 paragraph!**\n")
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
                    Button("Click here to look at an example of a Body 1 paragraph!") {isHidden.toggle()}
                        .font(.custom("Helvetica", size:25))
                    RoundedRectangle(cornerRadius: 25)
                        .inset(by: 3)
                        .stroke(Color.darkCyan, lineWidth: 5)
                        .frame(width: 800, height: 800)
                        .overlay(Text("    Firstly, various images are used to show a vivid contrast between his memories and the present. The author chooses words that are vivid, positive and bright in order to give a sense that the protagonist is finding happiness in the past. For example, “How funny it was then” (p. 157) shows the enjoyment, and “… so clearly do I see it that it seems as if I had left it yesterday…” (p. 156) shows vividness of the past. In addition, the phrase “…how the fragrance intoxicated me…” (p. 157) shows how much the protagonist longs for his past memories and how intensely he finds the happiness from the past. In contrast, the present shows very vague, dim, and negative imagery words such as “gray autumn morning” (p. 156),  “large, cold city,” or “A pain, a madness comes over me … irrevocably been lost” (p. 157). The two images are like an antithesis to each other, and therefore the readers are able to understand that the protagonist feels at a great loss and in pain because he is unable to find the same feeling of happiness from the present which he felt in the past. The importance of contrasting imagery is that creates a vivid image of the setting; therefore, an analysis of the time and space is inevitable.").font(.custom("Helvetica", size:25)).foregroundColor(.black).padding().lineSpacing(10).multilineTextAlignment(.leading))
                        .ignoresSafeArea()
                        .opacity(isHidden ? 1: 0)
                }
            }
        }
        }
    }
}


struct BodyOneView_Previews: PreviewProvider {
    static var previews: some View {
        BodyOneView()
    }
}
