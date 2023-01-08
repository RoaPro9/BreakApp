//
//  ContentView.swift
//  NanoChBreakApp
//
//  Created by Roa Moha on 15/06/1444 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.accentColor, Color("Color1"), Color("Color2")]), startPoint: .top, endPoint: .bottom)
//            Color.accentColor
//            LinearGradient(colors: [Color("Color1"),Color("Color2")], startPoint: .top, endPoint: .bottom)
            VStack {
                
                Text("test, world!")
            }
            .padding()
        }}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
