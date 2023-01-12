//
//  PopupView.swift
//  Ebada
//
//  Created by alaa.alsulaiman on 16/06/1444 AH.
//

import SwiftUI
enum AlertAction1 {
case ok
case cancel
case others
}

struct PopupView: View {
    
    @Binding var shown: Bool
    @Binding var closureA: AlertAction1?
    
    var isSuccess: Bool
    var title: String
    var message: String
    var time: String
    
    var body: some View {
        
        VStack(alignment:.trailing){
            
            ScrollView(.vertical){
                Text(title)
                    .foregroundColor(Color.black)
                    .font(.system(size: 28))
                    .padding()
                Text(message)
                    .font(.system(size: 24))
                    .padding()
                Text(time)
                    .font(.system(size: 18))
                    .padding()
                
                HStack{
                    
                    Button {
                        closureA = .ok
                        shown.toggle()
                    }
                label:{
                    Text(NSLocalizedString( "Done",comment: ""))
                        .font(.system(size: 22))
                        .frame(width: 150, height: 50)
                        .background(Color.init("blue"))
                        .cornerRadius(8)
                        .padding()
                        .foregroundColor(Color.white)
                }
                }
                //.padding(.bottom, 20)
            }
           
          //  .frame(width: UIScreen.main.bounds.width-50, height: 350)
            .frame(width: 350, height: 550)
            .background(Color.init("b"))
            .cornerRadius(20)
            .clipped()
            
            
        }
        //
    }
        }
        

struct PopupView_Previews: PreviewProvider {
    static var previews: some View {
        PopupView(shown: .constant(false), closureA: .constant(.others), isSuccess: false,title: "", message: "", time:"")
    }
}

//private extension PopupView {
//    var icon: some View {
//  Image (systemName: "info")
//    .symbolVariant(.circle.fill)
//    .font (.system(size: 50,
//    weight: .bold,
//                  design: .rounded)
//    )
//    .foregroundStyle(.white)
//           }
//
//    var title: some View {
//    Text ("Text here")
//
//    .font (
//    .system(size: 30,
//    weight: .bold,
//    design: .rounded)
//    )
//
//    .padding ()
//    }
//
//    var content: some View {
//    Text ("Lorem ipsum dolor sit amet, consectetur.")
//    .font (.callout)
//    .foregroundColor(.black.opacity(0.8))
//          }
//
//}

