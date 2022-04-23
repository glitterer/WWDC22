import SwiftUI

struct EssayStructure: View {
    
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        
        NavigationView {
            ZStack {
                ScrollView{
                    Text("A Five-paragraph Essay")
                        .font(.custom("Helvetica", size:40))
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding()
                    //.background(Color.gray.opacity(0.25))
                        .cornerRadius(8)
                    HStack{
                        Image("wwdc-character-fiveP")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300, height: 300)
                        
                        VStack{
                            Text("When it comes to writing an essay for an academic purpose, the most basic structure is the **'Five-Paragraph Essay'**.\n\nWhile some may find this to be a simple process, others may find this difficult in understanding and building strong fundamentals. Whatever the case might be, the important fact is that knowing the **five-paragraph essay** is an important process in the beginning of writing.\n\nA five-paragraph essay consists of three basic parts: **introduction, body,** and **conclusion**.\nTo learn deeply on each parts, select the part you are interested in from below!")
                                .font(.custom("Helvetica", size:25))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.leading)
                                .lineSpacing(10)
                                .padding()
                            Spacer()
                        }
                    }
                    .padding()
                    .ignoresSafeArea()
                    VStack{
                        Spacer()
                        HStack{
                            NavigationLink(destination: IntroductionView()) {
                                Text("Introduction")
                                    .font(.custom("Helvetica", size:25))
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
                                    .overlay(Text("**Thesis Statement** + 1~2 supporting sentences \n+ a sentence briefly talking about the bodies").font(.custom("Helvetica", size:25)).foregroundColor(.black))
                            }
                        }
                        HStack{
                            NavigationLink(destination: BodyOneView()) {
                                Text("Body1")
                                    .font(.custom("Helvetica", size:25))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.darkCyan)
                                    .multilineTextAlignment(.center)
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .padding()
                                //.background(Color.gray.opacity(0.25))
                                    .cornerRadius(8)
                                
                                RoundedRectangle(cornerRadius: 25)
                                    .inset(by: 3)
                                    .stroke(Color.darkCyan, lineWidth: 5)
                                    .frame(width: 800, height: 140)
                                    .padding()
                                    .overlay(Text("**Topic Sentence** + 3 Detail Sentences").font(.custom("Helvetica", size:25)).foregroundColor(Color.darkCyan))
                            }
                        }
                        HStack{
                            NavigationLink(destination: BodyTwoView()) {
                                Text("Body2")
                                    .font(.custom("Helvetica", size:25))
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
                            }
                        }
                        HStack{
                            NavigationLink(destination: BodyThreeView()) {
                                Text("Body3")
                                    .font(.custom("Helvetica", size:25))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.mainGreen)
                                    .multilineTextAlignment(.center)
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .padding()
                                //.background(Color.gray.opacity(0.25))
                                    .cornerRadius(8)
                                
                                RoundedRectangle(cornerRadius: 25)
                                    .inset(by: 3)
                                    .stroke(Color.mainGreen, lineWidth: 5)
                                    .frame(width: 800, height: 140)
                                    .padding()
                                    .overlay(Text("**Topic Sentence** + 3 Detail Sentences").font(.custom("Helvetica", size:25)).foregroundColor(Color.mainGreen))
                            }
                        }
                        HStack{
                            NavigationLink(destination: ConclusionView()) {
                                Text("Conclusion")
                                    .font(.custom("Helvetica", size:25))
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
                            }
                        }
                        NavigationLink(destination: EssayExampleView()) {
                            Text("Finished Studying? \nNow Let's See the Whole Sample Essay! 📄")
                                .font(.custom("Helvetica", size:25))
                                .fontWeight(.bold)
                                .foregroundColor(Color.blue)
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .infinity, alignment: .center)
                                .padding()
                                .background(Color.gray.opacity(0.25))
                                .cornerRadius(8)
                        }
                        NavigationLink(destination: TipChecklistView()) {
                            Text("📌A Tip-Checklist to Help You with Your Essay! 🤟")
                                .font(.custom("Helvetica", size:25))
                                .fontWeight(.bold)
                                .foregroundColor(Color.blue)
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .infinity, alignment: .center)
                                .padding()
                                .background(Color.gray.opacity(0.25))
                                .cornerRadius(8)
                        }
                        NavigationLink(destination: Congratulations()) {
                            Text("🌟Completed Writing an Essay?🌟")
                                .font(.custom("Helvetica", size:25))
                                .fontWeight(.bold)
                                .foregroundColor(Color.blue)
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .infinity, alignment: .center)
                                .padding()
                                .background(Color.gray.opacity(0.25))
                                .cornerRadius(8)
                        }
                    }
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct EssayStructure_Previews: PreviewProvider {
    static var previews: some View {
        EssayStructure()
    }
}
