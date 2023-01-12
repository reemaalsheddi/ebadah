//
//  ContentView.swift
//  TrackProgressView
//
//  Created by Reema Alsheddi on 10/01/2023.
//

import SwiftUI



struct ContentView: View {
    
    @State var shown = false
    @State var message = ""
    @State var title = ""
    @State var time = ""
    @State var c: AlertAction1?
    @State var isSuccess = false
    @State var count: Int = 0
    @State var count1: Int = 0
    @State var reset: Int = 0
    @State var reset1: Int = 0
    @State var count2: Int = 0
    @State var reset2: Int = 0
    @State var count3: Int = 0
    @State var reset3: Int = 0
    
   

        
    var body: some View {
        
        NavigationView {
            ScrollView {
                Divider ()
                
                VStack(alignment: .leading){
                    
                    Text(NSLocalizedString("Choose worship:", comment: ""))
                        .foregroundColor(Color("blue"))
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    
                    HStack{
                        
                        ScrollView(.horizontal){
                            Grid {
                                GridRow {
                                    
                                    Button{
                                        isSuccess = true
                                        title = NSLocalizedString("Morning remembrance", comment: "")
                                        
                                        message = NSLocalizedString("Remembering God Almighty and repeating the daily remembrances more often, including the morning remembrances, are among the things that protect us from evils and dangers.", comment: "")
                                        
                                        time=NSLocalizedString("Morning remembrance time: After Fajr prayer until before Asr prayer.", comment: "")
                                        
                                        shown.toggle()
                                    }
                                label:{
                                    Text(NSLocalizedString("Morning remembrance", comment: ""))
                                }
                                .foregroundColor(Color.black)
                                .frame(width: 150,height:100)
                                .background(Color.init("b2"))
                                .cornerRadius(20)
                                    
                                    
                                    
                                    Button{
                                        isSuccess = true
                                        title = NSLocalizedString("Evening remembrance", comment: "")
                                        message = NSLocalizedString("Remembering God Almighty and repeating the daily remembrances more often, including the evening remembrances, are among the things that protect us from evils and dangers.", comment: "")
                                        time = NSLocalizedString("Evening remembrance time: After Asr prayer until Midnight.", comment: "")
                                        shown.toggle()
                                    }
                                label:{
                                    Text(NSLocalizedString("Evening remembrance", comment: ""))
                                }
                                .foregroundColor(Color.black)
                                .frame(width: 150,height:100)
                                .background(Color.init("b2"))
                                .cornerRadius(20)
                                    
                                    Button{
                                        isSuccess = true
                                        title = NSLocalizedString("Recitation of the Qur'an",comment: "")
                                        message = NSLocalizedString("(Read the Qur’an, for it will come as an intercessor for its reciters on the Day of Resurrection).",comment: "")
                                        time = ""
                                        shown.toggle()
                                    }
                                label:{
                                    Text(NSLocalizedString("Recitation of the Qur'an", comment: ""))
                                    
                                }
                                .foregroundColor(Color.black)
                                .frame(width: 150,height:100)
                                .background(Color.init("b2"))
                                .cornerRadius(20)
                                    
                                    
                                    Button{
                                        isSuccess = true
                                        title = NSLocalizedString("The Witr prayer",comment: "")
                                        message = NSLocalizedString("The Prophet (ﷺ) said: Allah is single (witr) and loves what is single, so observe the witr, you who follow the Qur'an.",comment: "")
                                        time = NSLocalizedString("After the Isha prayer until before the Fajr prayer.",comment: "")
                                        shown.toggle()
                                    }
                                label:{
                                    Text(NSLocalizedString("The Witr prayer", comment: ""))
                                }
                                .foregroundColor(Color.black)
                                .frame(width: 150,height:100)
                                .background(Color.init("b2"))
                                .cornerRadius(20)
                                }
                            }
                        }
                        .blur(radius: shown ? 10 : 0)
                        if shown {
                            PopupView(shown: $shown, closureA: $c, isSuccess: isSuccess,title: title ,message: message ,time: time)
                                .padding(.trailing,20)
                            // .padding(.bottom,-130)
                        }//if
                    }
                    Text(NSLocalizedString("Sabha", comment: ""))
                        .foregroundColor(Color("blue"))
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                } .padding()
                
                VStack(alignment: .trailing){
                    
                }
                
                
                
                
                HStack{
                    VStack (alignment: .leading) {
                        Text(NSLocalizedString("Astaghfirullah", comment: ""))
                            .font(.system(size: 20))
                        
                        Text("\(count)")
                            .foregroundColor(Color.black)
                            .font(.system(size: 25))
                            .padding(.leading,50)
                        
                        HStack{
                            Button(action: {
                                self.count += 1
                            } )
                            {
                                Image(systemName: "plus")
                                    .font(.system(size: 25))
                                //Text ("Increment" )
                            }
                            .padding(.trailing,20)
                            
                            Button(action: {
                                self.count = 0
                            } )
                            {Image(systemName: "arrow.uturn.left")
                                    .font(.system(size: 25))
                            }
                            .padding(.leading,20)
                        }
                        
                        
                    }.foregroundColor(Color.black)
                        .frame(width: 150,height:100)
                        .background(Color.init("b2"))
                        .cornerRadius(20)
                    
                    VStack (alignment: .leading) {
                        Text(NSLocalizedString("Subhanallah", comment: ""))
                            .font(.system(size: 20))
                        
                        
                        Text("\(count1)")
                            .foregroundColor(Color.black)
                            .font(.system(size: 25))
                            .padding(.leading,50)
                        
                            .foregroundColor(Color("blue"))
                        HStack{
                            Button(action: {
                                self.count1 += 1
                            } )
                            {
                                Image(systemName: "plus")
                                    .font(.system(size: 25))
                                
                                //Text ("Increment" )
                            }
                            .padding(.trailing,20)
                            Button(action: {
                                self.count1 = 0
                            } )
                            {Image(systemName: "arrow.uturn.left")
                                    .font(.system(size: 25))
                                
                            }
                            .padding(.leading,20)
                            
                        }
                        
                        
                    }.foregroundColor(Color.black)
                        .frame(width: 150,height:100)
                        .background(Color.init("b2"))
                        .cornerRadius(20)
                    
                    
                }
               
                Spacer(minLength: 20)
                
                HStack{
                    VStack (alignment: .leading) {
                        Text(NSLocalizedString("Alhamdalalah", comment: ""))
                            .font(.system(size: 20))
                        
                        
                        Text("\(count2)")
                            .foregroundColor(Color.black)
                            .font(.system(size: 25))
                            .padding(.leading,50)
                        
                            .foregroundColor(Color("blue"))
                        HStack{
                            Button(action: {
                                self.count2 += 1
                            } )
                            {
                                Image(systemName: "plus")
                                    .font(.system(size: 25))
                                
                                //Text ("Increment" )
                            }
                            .padding(.trailing,20)
                            Button(action: {
                                self.count2 = 0
                            } )
                            {Image(systemName: "arrow.uturn.left")
                                    .font(.system(size: 25))
                                
                            }
                            .padding(.leading,20)
                            
                        }
                        
                        
                    }.foregroundColor(Color.black)
                        .frame(width: 150,height:100)
                        .background(Color.init("b2"))
                        .cornerRadius(20)
                    
                    VStack (alignment: .leading) {
                        Text(NSLocalizedString("Allah Akbar", comment: ""))
                            .font(.system(size: 20))
                        
                        
                        Text("\(count3)")
                            .foregroundColor(Color.black)
                            .font(.system(size: 25))
                            .padding(.leading,50)
                        
                            .foregroundColor(Color("blue"))
                        HStack{
                            Button(action: {
                                self.count3 += 1
                            } )
                            {
                                Image(systemName: "plus")
                                    .font(.system(size: 25))
                                
                                //Text ("Increment" )
                            }
                            .padding(.trailing,20)
                            Button(action: {
                                self.count3 = 0
                            } )
                            {Image(systemName: "arrow.uturn.left")
                                    .font(.system(size: 25))
                                
                            }
                            .padding(.leading,20)
                            
                        }
                        
                        
                    }.foregroundColor(Color.black)
                        .frame(width: 150,height:100)
                        .background(Color.init("b2"))
                        .cornerRadius(20)
                }
                
                
                
                
            }.navigationBarTitle(Text(NSLocalizedString("ebada",comment: "")))
        }.padding(6)
                    

                    
                  
                }
            
     
    
    func checkboxSelected(id: String, isMarked: Bool) {
        print("\(id) is marked: \(isMarked)")
        
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
       
        ContentView()
            .environment(\.locale, .init(identifier: "de"))
            

    }
}
