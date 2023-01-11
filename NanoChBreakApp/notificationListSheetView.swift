//
//  notificationListSheetView.swift
//  NanoChBreakApp
//
//  Created by Roa Moha on 18/06/1444 AH.
//

import SwiftUI

struct notificationListSheetView: View {
    @State private var showingNotivicationSheet = false

    var body: some View {
        Button {
            showingNotivicationSheet.toggle()
            
        } label: {
            Image(systemName: "figure.mind.and.body")
                .foregroundColor(Color.white)
            
            
            
            
    }
//                .buttonStyle(.bordered)
            .sheet(isPresented: $showingNotivicationSheet) {
                NavigationView{
                    NotificationListView()
                        
                        
                        
                    }.presentationDetents([.height(250), .fraction(20), .medium, .large])
                    
                        .edgesIgnoringSafeArea(.all)
                    
                }
    }
}

struct notificationListSheetView_Previews: PreviewProvider {
    static var previews: some View {
        notificationListSheetView()
    }
}
