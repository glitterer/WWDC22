import SwiftUI

struct CheckboxStyle: ToggleStyle {
    
    func makeBody(configuration: Self.Configuration) -> some View {
        
        return HStack {
            
            configuration.label
            
            Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(configuration.isOn ? .blue : .gray)
                .font(.system(size: 20, weight: .bold, design: .default))
                .onTapGesture {
                    configuration.isOn.toggle()
                }
        }
        
    }
}

struct TipChecklistView: View {
    @State var checkcboxIntro1 = false
    @State var checkcboxIntro2 = false
    @State var checkcboxIntro3 = false
    @State var checkcboxBody1_1 = false
    @State var checkcboxBody1_2 = false
    @State var checkcboxBody1_3 = false
    @State var checkcboxBody2_1 = false
    @State var checkcboxBody2_2 = false
    @State var checkcboxBody2_3 = false
    @State var checkcboxBody3_1 = false
    @State var checkcboxBody3_2 = false
    @State var checkcboxBody3_3 = false
    @State var checkcboxCon1 = false
    @State var checkcboxCon2 = false
    @State var checkcboxCon3 = false
    
    var body: some View {
        VStack{
            Text("Check the Tips as You Write Along! ☑")
                .font(.custom("Helvetica", size:40))
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .cornerRadius(8)
            Spacer()

            ScrollView{
                VStack{
                    Group{
                        //Introductory Paragraph
                        Text("1. Introductory Paragraph")
                            .font(.custom("Helvetica", size:30))
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            .cornerRadius(8)
                        HStack{
                            Toggle(isOn: $checkcboxIntro1, label: {})
                                .padding()
                                .toggleStyle(CheckboxStyle())
                            Text("A. Thesis statement")
                                .font(.custom("Helvetica", size:25))
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        HStack{
                            Toggle(isOn: $checkcboxIntro2, label: {})
                                .padding()
                                .toggleStyle(CheckboxStyle())
                            Text("B. Supporting sentences that connect information")
                                .font(.custom("Helvetica", size:25))
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        HStack{
                            Toggle(isOn: $checkcboxIntro3, label: {})
                                .padding()
                                .toggleStyle(CheckboxStyle())
                            Text("C. A Hook to catch the reader's attention")
                                .font(.custom("Helvetica", size:25))
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                    
                    //Body 1
                    Group{
                        Text("2. Body 1 Paragraph")
                            .font(.custom("Helvetica", size:30))
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            .cornerRadius(8)
                        HStack{
                            Toggle(isOn: $checkcboxBody1_1, label: {})
                                .padding()
                                .toggleStyle(CheckboxStyle())
                            Text("A. Topic Sentence")
                                .font(.custom("Helvetica", size:25))
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        HStack{
                            Toggle(isOn: $checkcboxBody1_2, label: {})
                                .padding()
                                .toggleStyle(CheckboxStyle())
                            Text("B. Detail Sentences (including quotes, citations, example, statistics, facts, etc. ")
                                .font(.custom("Helvetica", size:25))
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        HStack{
                            Toggle(isOn: $checkcboxBody1_3, label: {})
                                .padding()
                                .toggleStyle(CheckboxStyle())
                            Text("C. Last sentence that acts as a transition to the next paragraph")
                                .font(.custom("Helvetica", size:25))
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                    
                    //Body 2
                    Group{
                        Text("2. Body 2 Paragraph")
                            .font(.custom("Helvetica", size:30))
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            .cornerRadius(8)
                        HStack{
                            Toggle(isOn: $checkcboxBody2_1, label: {})
                                .padding()
                                .toggleStyle(CheckboxStyle())
                            Text("A. Topic statement")
                                .font(.custom("Helvetica", size:25))
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        HStack{
                            Toggle(isOn: $checkcboxBody2_2, label: {})
                                .padding()
                                .toggleStyle(CheckboxStyle())
                            Text("B. Detail Sentences (including quotes, citations, example, statistics, facts, etc. ")
                                .font(.custom("Helvetica", size:25))
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        HStack{
                            Toggle(isOn: $checkcboxBody2_3, label: {})
                                .padding()
                                .toggleStyle(CheckboxStyle())
                            Text("C. Last sentence that acts as a transition to the next paragraph")
                                .font(.custom("Helvetica", size:25))
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                    
                    //Body 3
                    Group{
                        Text("3. Body 3 Paragraph")
                            .font(.custom("Helvetica", size:30))
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            .cornerRadius(8)
                        HStack{
                            Toggle(isOn: $checkcboxBody3_1, label: {})
                                .padding()
                                .toggleStyle(CheckboxStyle())
                            Text("A. Topic statement")
                                .font(.custom("Helvetica", size:25))
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        HStack{
                            Toggle(isOn: $checkcboxBody3_2, label: {})
                                .padding()
                                .toggleStyle(CheckboxStyle())
                            Text("B. Detail Sentences (including quotes, citations, example, statistics, facts, etc. ")
                                .font(.custom("Helvetica", size:25))
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        HStack{
                            Toggle(isOn: $checkcboxBody3_3, label: {})
                                .padding()
                                .toggleStyle(CheckboxStyle())
                            Text("C. Last sentence that acts as a transition to the next paragraph")
                                .font(.custom("Helvetica", size:25))
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                    
                    //Conclusion
                    Group{
                        Text("5. Concluding Paragraph")
                            .font(.custom("Helvetica", size:30))
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            .cornerRadius(8)
                        HStack{
                            Toggle(isOn: $checkcboxCon1, label: {})
                                .padding()
                                .toggleStyle(CheckboxStyle())
                            Text("A. The first statement that provides a summary to your essay and thesis")
                                .font(.custom("Helvetica", size:25))
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        HStack{
                            Toggle(isOn: $checkcboxCon2, label: {})
                                .padding()
                                .toggleStyle(CheckboxStyle())
                            Text("B. Summarization of the oerall main ideas ")
                                .font(.custom("Helvetica", size:25))
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        HStack{
                            Toggle(isOn: $checkcboxCon3, label: {})
                                .padding()
                                .toggleStyle(CheckboxStyle())
                            Text("C. A memorable statement to finish off or referring back to the hook sentence")
                                .font(.custom("Helvetica", size:25))
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                }
            }
        }
    }
}

struct TipChecklistViewView_Previews: PreviewProvider {
    static var previews: some View {
        TipChecklistView()
    }
}
