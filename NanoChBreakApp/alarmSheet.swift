//
//  alarmSheet.swift
//  NanoChBreakApp
//
//  Created by Roa Moha on 16/06/1444 AH.
//

import SwiftUI

struct alarmSheet: View {
    @State private var showingAlarmSheet = false
    var colors = ["Hourly", "Daily", "Weekdays", "Weekends", "Weekly", "Never"]
    @State private var selectedColor = "Hourly"
    @State private var wakeUp = Date.now
    @ObservedObject var notificationManager: NotificationManger
   // @Binding var isPresented: Bool
    var body: some View {
        
        Button {
            showingAlarmSheet.toggle()
        } label: {
            Image(systemName: "clock.badge.questionmark")
                .foregroundColor(Color.white)
            
//            .background(.thinMaterial)
//            .overlay(RoundedRectangle(cornerRadius: 20))
               
        }
        .buttonStyle(.bordered)
        
      
        .sheet(isPresented: $showingAlarmSheet) {
            alarmSheetView( notificationManager: notificationManager
            )
        }
    }
    
    struct alarmSheet_Previews: PreviewProvider {
        static var previews: some View {
            alarmSheet(notificationManager: NotificationManger()
                      )
        }
    }
}
