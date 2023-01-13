//
//  ToolBarView.swift
//  NanoChBreakApp
//
//  Created by Roa Moha on 16/06/1444 AH.
//

import SwiftUI

struct ToolBarView: View {
    @State private var isCreatePresented = false
    @State private var showingNotivicationSheet = false

    @StateObject private var notificationManager = NotificationManger()
    var body: some View {
        NavigationView{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [
                    
                    .accentColor,
                    Color("Color 1"),  Color("Color 3"), Color("Color 8"),  ]
                                                 ), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
                Text("").toolbar {
                    ToolbarItemGroup(  placement: .navigationBarTrailing){
                        
                        ZStack{
                            RoundedRectangle(cornerSize: CGSize(width: 250, height: 150) )
                                       .foregroundColor(Color.white )
                                       .frame(width: 260, height: 70)
                                       .opacity(0.35)
                                
                            HStack (spacing: 20){
                                VStack{
                                    alarmSheet( notificationManager: notificationManager)
                                    Text("Alarm") .font(.system(size: 12 , weight: .semibold, design: .rounded))
                                        .foregroundColor(.accentColor)
                                        .offset(y: -10)
                                }
                                
                                VStack{
//
//                                    Toggle(isOn: $showingNotivicationSheet) {
//
//
//                                        Label("Meditaion Time", systemImage: "figure.mind.and.body")
//
//
//                                    }
//                                        .tint(.white)
//                                        .controlSize(.large)
//                                        .toggleStyle(.button)
//                                        .sheet(isPresented: $showingNotivicationSheet ){
//                                            NotificationListView()
//
//                                        }
                                    notificationListSheetView()
                                    Text("Meditaion") .font(.system(size: 12 , weight: .semibold, design: .rounded))
                                        .foregroundColor(.accentColor)
                                        .offset(y: -10)
                                }
                                VStack (alignment: .center){
                                    SoundsSheet()
                                    Text("Sounds") .font(.system(size: 12 , weight: .semibold, design: .rounded))
                                        .foregroundColor(.accentColor)
                                        .offset(y: -10)
                                       
                                    
                                }
                            }
                            
                        }.offset(x: -60, y: 30)
                        
                    }
//                    ToolbarItem(placement: .navigationBarLeading) {
//                        alarmSheet( notificationManager: notificationManager
//                                  )
//                    }
//                    ToolbarItem(placement: .principal){
//                        Toggle(isOn: $showingNotivicationSheet) {
//
//
//                            Label("Meditaion Time", systemImage: "brain")
//
//
//                        }.padding()
//                            .tint(.white)
//                            .controlSize(.large)
//                            .toggleStyle(.button)
//                            .sheet(isPresented: $showingNotivicationSheet ){
//                                NotificationListView()
//
//                            }}
//                    ToolbarItem(placement: .navigationBarTrailing) {
//                        SoundsSheet()
//                    }
                    
                }
                
            }}
        
        
        }
}

struct ToolBarView_Previews: PreviewProvider {
    static var previews: some View {
        ToolBarView()
    }
}
