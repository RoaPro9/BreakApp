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
    //    @State private var showingAlarmSheet = false
    //    @State private var showingSoundsSheet = false
    
    var body: some View {
       
 
            
            ZStack{
                NotificationListView()
                
                
                ToolBarView()
                
                VStack{
                  
                        
//                    HStack(spacing: 20 ){
//
//
//                        alarmSheet()
//                        SoundsSheet()
//
//                    }
                    Toggle(isOn: $isAnimating) {
                        
                        
                        Label("Meditaion Time", systemImage: "brain")
                        
                        
                    }
                    .padding()
                    .tint(.purple)
                    .controlSize(.large)
                    .toggleStyle(.button)
                    
                    
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(.white )
                            .cornerRadius(25)
                            .opacity(0.4)
                            .shadow(radius: 5)
                            .frame(width: 350, height: 200 )
                        
                        Image("animal")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .offset(y: yPos)
                            .animation(.spring(response: 10, dampingFraction: 1, blendDuration: 1).repeatForever(autoreverses: true).speed(5) )
                            
//                            .animation(Animation.spring(response: 10, dampingFraction: 1, blendDuration: 1).repeatForever(autoreverses: true).speed(5) , value:  vm.isActive)
                            .onAppear {
                                
                                self.yPos = -30
                            }
                        
                        
                        //
                    }
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
