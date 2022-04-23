import SwiftUI

struct BodyTwoView: View {
    @State var isHidden = false
    
    var body: some View {
        ScrollView{
        ZStack{
            VStack{
                Text("Body2")
                    .font(.custom("Helvetica", size:40))
                    .fontWeight(.bold)
                    .foregroundColor(Color.charOrange)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
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
                VStack{
                    Spacer()
                    Button("Click here to look at an example of a Body 2 paragraph!") {isHidden.toggle()}
                        .font(.custom("Helvetica", size:25))
                    RoundedRectangle(cornerRadius: 25)
                        .inset(by: 3)
                        .stroke(Color.charOrange, lineWidth: 5)
                        .frame(width: 800, height: 800)
                        .overlay(Text("    The setting is vividly shown from the descriptions of images that there is a strong contrast between the current situation and the memories of the man. Regarding time, the author does not write much about it apart from the fact that the man is looking at his past memories even though he is in the “new world” (p. 156). However, the author describes a lot relating to space. The past has two spaces which are the “little room” and the “theater café.” Through a historical approach, it can be interpreted that both spaces symbolize the homeland of the man, or if one is to expand the meaning, the homeland of the immigrants. The 19th century was a period of mass immigration because of the American Dream, which later on is suggested to be a false dream, closer to an illusion. Therefore, with the contrast of the two spaces in the past and the present, it can be interpreted as the contrast of the homeland and the illusion of America. The author is saying that one should find their meaning of life from their certain place and time, not from a setting that has already passed or something that might come in the future. However, it is important to notice that the setting from “America” all comes from a single character’s point of view and thus, it is important to analyze in detail of who this character is.").font(.custom("Helvetica", size:25)).foregroundColor(.black).padding().lineSpacing(10).multilineTextAlignment(.leading))
                        .ignoresSafeArea()
                        .opacity(isHidden ? 1: 0)
                }
            }
        }
        }
    }
}

struct BodyTwoView_Previews: PreviewProvider {
    static var previews: some View {
        BodyTwoView()
    }
}
