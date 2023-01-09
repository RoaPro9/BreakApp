//
//  ToolBarView.swift
//  NanoChBreakApp
//
//  Created by Roa Moha on 16/06/1444 AH.
//

import SwiftUI

struct ToolBarView: View {
    var body: some View {
        NavigationView{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [
                    
                    .accentColor,
                    Color("Color 1"),  Color("Color 3"), Color("Color 8"),  ]
                                                 ), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
                Text("").toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        alarmSheet()
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        SoundsSheet()
                    }
                    
                }
                
            }}
        
        
        }
}

struct ToolBarView_Previews: PreviewProvider {
    static var previews: some View {
        ToolBarView()
    }
}
