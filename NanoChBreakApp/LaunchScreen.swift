//
//  LaunchScreen.swift
//  NanoChBreakApp
//
//  Created by Roa Moha on 15/06/1444 AH.
//

import SwiftUI

struct LaunchScreen: View {
    @State private var logoScale: CGFloat = 1
    @State private var showNextScreen = false
    
    
    var body: some View {
        if showNextScreen{
            ContentView()
        }
        else if (showNextScreen == false) {
            ZStack {
                
                LinearGradient(gradient: Gradient(colors: [
                    
                    .accentColor,
                    Color("Color 1"),  Color("Color 3"), Color("Color 8"),  ]
                                                 ), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
                
                VStack{
                    Image("breakLogo")
                        .resizable()
                        .scaledToFit()
                        .fixedSize()
                        .frame(width: 200, height: 200)
                    
                    
                    
                    //                Text("BREAK")
                    //                    .foregroundColor(.white)
                    //                    .font(.system(size:45 ))
                    
                }.scaleEffect(logoScale)
                    .animation(Animation.easeInOut(duration: 1)
                        .repeatCount(3, autoreverses: true))
                    .onAppear {
                        self.logoScale = 1.5
                        
                        
                    }
                
                NavigationLink(destination: ContentView(), isActive: $showNextScreen) {
                    EmptyView()
                }
            }
            .onAppear() {
                // Start a timer to show the next screen after 2 seconds
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    self.showNextScreen = true
                }
                
                
            }
            
        }
        
    }
}
        
        
  
    
    struct LaunchScreen_Previews: PreviewProvider {
        static var previews: some View {
            LaunchScreen()
        }
        
    }

