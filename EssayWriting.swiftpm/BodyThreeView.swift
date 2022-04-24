import SwiftUI

struct BodyThreeView: View {
    @State var isHidden = false
    
    var body: some View {
        ScrollView{
        ZStack{
            VStack{
                Text("Body3")
                    .font(.custom("Helvetica", size:25))
                    .fontWeight(.bold)
                    .foregroundColor(Color.mainGreen)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .cornerRadius(8)
                
                RoundedRectangle(cornerRadius: 25)
                    .inset(by: 3)
                    .stroke(Color.mainGreen, lineWidth: 5)
                    .frame(width: 800, height: 140)
                    .padding()
                    .overlay(Text("**Topic Sentence** + 3 Detail Sentences").font(.custom("Helvetica", size:25)).foregroundColor(Color.mainGreen))
            
                
                VStack{
                    VStack{
                        Text("As mentioned in the Body 1 and Body 2 Paragraph, the body is where your present your main ideas and their detail (i.e supporting) sentences. Since we are putting our most important main idea in body 1, body 3 would contain the subjectively least important main idea of the essay. \nThe tips for writing a body 3 paragraph are as follows: ")
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
                        Text("✔︎ In contrast to body 1 and body 2, the last sentence in body 3 should does not need to connect with the next paragraph (i.e the conclusion paragraph). However, it would be best to give it a 'finishing off' feeling such as mentioning the ideas of other body paragraphs or giving a conclusion-feeling that give the reader an assumption that the body has finished.\n")
                            .font(.custom("Helvetica", size:25))
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding([.leading, .trailing])
                        Text("And with that, Now you are able to write your **last body paragraph!**\n")
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
                    Button("Click here to look at an example of a body 3 paragraph!") {isHidden.toggle()}
                        .font(.custom("Helvetica", size:25))
                    RoundedRectangle(cornerRadius: 25)
                        .inset(by: 3)
                        .stroke(Color.mainGreen, lineWidth: 5)
                        .frame(width: 800, height: 1200)
                        .overlay(Text("    By using the main character as the persona of the author, Schnitzler is showing that people should “think of the present as a present,” as quoted from a movie, Kung-Fu Panda. The protagonist’s perspective of America changes completely the moment he lands in his “true America” (p. 157). One can indicate the strong contrast of the protagonist’s emotion between the past and the present from words like “something new” and “irrevocably been lost” (p. 157). Also, relating to the main character, it is important to analyze how the protagonist sees Anna. Anna might not merely be the protagonist’s lover, but Anna can actually be interpreted as the Statue of Liberty that symbolizes his “sweet, fragrant America” (p. 157). The evidence is shown from the name Anna and America both starting with A’s and only Anna saying the phrase that contains the idea of the “true America,” which is “something new” (p. 156). Also, Anna is described more than the protagonist in many ways. She has an attractive appearance of “fine, golden hair,” “sweet, white patch of skin” (p. 156), and “fragrance [that] intoxicated me” (p. 157). The descriptions all seem to be senses felt when one is in a drunken state or in an illusion. If Anna was to be interpreted as the ideal America of the protagonist, it would show that the author is conveying a message that the protagonist’s mind of wishing to find an ideal America has been starting from the past and is still continuing. The reason one can assume that he is still wishing to find the ideal America in the future is because he “closes [his] eyes, and through a strange, deceiving game of senses the same fragrance embraces [him]” (p. 157). Therefore, it can be analyzed that the man is unable to find happiness in the present and will keep looking for a new ideal place from the future. By showing the loss of the character, it is leading the readers to think that they should not follow the man’s perspective and rather find happiness in the present.").font(.custom("Helvetica", size:25)).foregroundColor(.black).padding().lineSpacing(10).multilineTextAlignment(.leading))
                        .ignoresSafeArea()
                        .opacity(isHidden ? 1: 0)
                }
            }
        }
        }
    }
}

struct BodyThreeView_Previews: PreviewProvider {
    static var previews: some View {
        BodyThreeView()
    }
}
