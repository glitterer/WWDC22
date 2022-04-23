import SwiftUI

struct EssayExampleView: View {
    var body: some View {
        ScrollView{
            VStack{
                ZStack{
                    HStack{
                        Image("wwdc-character-finEssay")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .padding(.trailing, 500.0)
                    }
                    Text("Sample Essay")
                        .font(.custom("Helvetica", size:40))
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding()
                        .cornerRadius(8)
                    
                    HStack{
                        Image("wwdc-character-Yay")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .padding(.leading, 500.0)
                    }
                }
                
                ZStack{
                    Rectangle()
                        .inset(by: 3)
                        .stroke(Color.lightGrey, lineWidth: 3)
                        .frame(width: 980, height: 3700)
                        .padding()
                    VStack{
                        Text("The Present Happiness")
                            .font(.custom("Helvetica", size:30))
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding()
                            .cornerRadius(8)
                        RoundedRectangle(cornerRadius: 25)
                            .inset(by: 3)
                            .stroke(Color.black, lineWidth: 5)
                            .frame(width: 900, height: 450)
                            .overlay(Text("    In the movie Kung-Fu Panda, the main hero, Poe, trains to derive his potential in order to protect the future. However, he finds out that true potential, happiness, and meaning lie within the present. Finding something truly meaningful in life is always something the protagonists in movies or literature look for. It is also the moral of a 130-year-old essay written by Arthur Schnitzler. “America” is a story about the protagonist going to America and reminiscing about his past, wonderful memories that contrast from what he feels now from America. The story conveys a message that happiness should be found in the present through the author’s use of various devices of literature.").font(.custom("Helvetica", size:25)).foregroundColor(.black).padding().lineSpacing(10).multilineTextAlignment(.leading))
                        
                        
                        RoundedRectangle(cornerRadius: 25)
                            .inset(by: 3)
                            .stroke(Color.darkCyan, lineWidth: 5)
                            .frame(width: 900, height: 700)
                            .overlay(Text("    Firstly, various images are used to show a vivid contrast between his memories and the present. The author chooses words that are vivid, positive and bright in order to give a sense that the protagonist is finding happiness in the past. For example, “How funny it was then” (p. 157) shows the enjoyment, and “… so clearly do I see it that it seems as if I had left it yesterday…” (p. 156) shows vividness of the past. In addition, the phrase “…how the fragrance intoxicated me…” (p. 157) shows how much the protagonist longs for his past memories and how intensely he finds the happiness from the past. In contrast, the present shows very vague, dim, and negative imagery words such as “gray autumn morning” (p. 156),  “large, cold city,” or “A pain, a madness comes over me … irrevocably been lost” (p. 157). The two images are like an antithesis to each other, and therefore the readers are able to understand that the protagonist feels at a great loss and in pain because he is unable to find the same feeling of happiness from the present which he felt in the past. The importance of contrasting imagery is that creates a vivid image of the setting; therefore, an analysis of the time and space is inevitable.").font(.custom("Helvetica", size:25)).foregroundColor(.black).padding().lineSpacing(10).multilineTextAlignment(.leading))
                        
                        
                        
                        RoundedRectangle(cornerRadius: 25)
                            .inset(by: 3)
                            .stroke(Color.charOrange, lineWidth: 5)
                            .frame(width: 900, height: 700)
                            .overlay(Text("    The setting is vividly shown from the descriptions of images that there is a strong contrast between the current situation and the memories of the man. Regarding time, the author does not write much about it apart from the fact that the man is looking at his past memories even though he is in the “new world” (p. 156). However, the author describes a lot relating to space. The past has two spaces which are the “little room” and the “theater café.” Through a historical approach, it can be interpreted that both spaces symbolize the homeland of the man, or if one is to expand the meaning, the homeland of the immigrants. The 19th century was a period of mass immigration because of the American Dream, which later on is suggested to be a false dream, closer to an illusion. Therefore, with the contrast of the two spaces in the past and the present, it can be interpreted as the contrast of the homeland and the illusion of America. The author is saying that one should find their meaning of life from their certain place and time, not from a setting that has already passed or something that might come in the future. However, it is important to notice that the setting from “America” all comes from a single character’s point of view and thus, it is important to analyze in detail of who this character is.").font(.custom("Helvetica", size:25)).foregroundColor(.black).padding().lineSpacing(10).multilineTextAlignment(.leading))
                        
                        
                        
                        
                        RoundedRectangle(cornerRadius: 25)
                            .inset(by: 3)
                            .stroke(Color.mainGreen, lineWidth: 5)
                            .frame(width: 900, height: 1050)
                            .overlay(Text("    By using the main character as the persona of the author, Schnitzler is showing that people should “think of the present as a present,” as quoted from a movie, Kung-Fu Panda. The protagonist’s perspective of America changes completely the moment he lands in his “true America” (p. 157). One can indicate the strong contrast of the protagonist’s emotion between the past and the present from words like “something new” and “irrevocably been lost” (p. 157). Also, relating to the main character, it is important to analyze how the protagonist sees Anna. Anna might not merely be the protagonist’s lover, but Anna can actually be interpreted as the Statue of Liberty that symbolizes his “sweet, fragrant America” (p. 157). The evidence is shown from the name Anna and America both starting with A’s and only Anna saying the phrase that contains the idea of the “true America,” which is “something new” (p. 156). Also, Anna is described more than the protagonist in many ways. She has an attractive appearance of “fine, golden hair,” “sweet, white patch of skin” (p. 156), and “fragrance [that] intoxicated me” (p. 157). The descriptions all seem to be senses felt when one is in a drunken state or in an illusion. If Anna was to be interpreted as the ideal America of the protagonist, it would show that the author is conveying a message that the protagonist’s mind of wishing to find an ideal America has been starting from the past and is still continuing. The reason one can assume that he is still wishing to find the ideal America in the future is because he “closes [his] eyes, and through a strange, deceiving game of senses the same fragrance embraces [him]” (p. 157). Therefore, it can be analyzed that the man is unable to find happiness in the present and will keep looking for a new ideal place from the future. By showing the loss of the character, it is leading the readers to think that they should not follow the man’s perspective and rather find happiness in the present.").font(.custom("Helvetica", size:25)).foregroundColor(.black).padding().lineSpacing(10).multilineTextAlignment(.leading))
                        
                        
                        
                        
                        RoundedRectangle(cornerRadius: 25)
                            .inset(by: 3)
                            .stroke(Color.black, lineWidth: 5)
                            .frame(width: 900, height: 650)
                            .overlay(Text("    In conclusion, the story conveys the message same to a phrase from the movie, Kung-Fu Panda, “That is why the present is called the present.” The author of “America” has used images to make the past very happy, which ironically strengthens the issue that in the present the protagonist is lost and unable to move forward. This is shown by the scene of the protagonist reminiscing about the past and going into a delusion of catching the fragrance of hope in finding his ideal happiness in the future. Like the Kung-Fu Panda, if one is stuck in the past, he is unable to see the present, and without being able to see the present, it is difficult to move forward. The only way Panda successfully masters martial arts is by understanding and accepting the present. This is not only applied to protagonists of movies and stories but also our real lives. Without being able to see the present, it is impossible to find happiness in the future. Therefore, it is important to explore the inner-happiness of the current time and space rather than seeking it in the past or the future.").font(.custom("Helvetica", size:25)).foregroundColor(.black).padding().lineSpacing(10).multilineTextAlignment(.leading))
                    }
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
