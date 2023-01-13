//
//  ContentView.swift
//  NanoChBreakApp
//
//  Created by Roa Moha on 15/06/1444 AH.
//

import SwiftUI
struct ContentView: View {
    @StateObject private var vm = TimerView.ViewModel()
    @State private var yPos: CGFloat = 0
    @State private var isAnimating: Bool = false
    @State private var showingNotivicationSheet = false
    //    @State private var showingAlarmSheet = false
    //    @State private var showingSoundsSheet = false
    
    var body: some View {
       
 
            
            ZStack {
                NotificationListView()
                
                
                ToolBarView()
                
                VStack {
                  
                        

                    
                    
                    
                    Spacer()
                           .frame(height: 150)
                    Image("meditiationAnimal")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 250, height: 250)
                            .offset(y: yPos)
                            .animation(.spring(response: 10, dampingFraction: 1, blendDuration: 1).repeatForever(autoreverses: true).speed(5) )

                            .onAppear {
                                
                                self.yPos = -30
                            }
                        
                        
                        //
                  //  }
                    Image("Animalshadow")
                        .resizable()
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250, height: 10)
                    Spacer()
                           .frame(height: 50)
                    TimerView()
                    
                    
                    
                    //            Button(isAnimating ? "Stop Animation" : "Start Animation") {
                    //
                    //                    self.isAnimating.toggle()
                    //                }
                    //            }
                    //            .onAppear {
                    //                self.yPos = -30
                    //            }
                    
                    //                Text("welcome")
                    //                    .font(.headline)
                    
                }
                
            }
            
            
      
        
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }}
