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
    var body: some View {
        
        Button {
            showingAlarmSheet.toggle()
        } label: {
            Image(systemName: "clock.badge.questionmark")
                .foregroundColor(Color.white)
               
        }
        .buttonStyle(.bordered)
        
      
        .sheet(isPresented: $showingAlarmSheet) {
            NavigationView{
                VStack {
    //                HStack(spacing : 100){
    //                    Button(role: .cancel) {
    //                    } label: {
    //                      Text("Cancel")
    //                    }
    //                    Text("Time")
    //                        .font(.headline).foregroundColor(Color("Color"))
    //
    //                    Button(role: .none) {
    //                    } label: {
    //                      Text("Done")
    //                    }.foregroundColor(Color("Color 8"))
    //                }
                    List{
                        
                        DatePicker("Time", selection: $wakeUp, displayedComponents: .hourAndMinute).foregroundColor(Color("Color 1"))
                            
                        
                        Picker("Repeat", selection: $selectedColor) {
                            ForEach(colors, id: \.self) {
                                Text($0).foregroundColor(Color("Color 1"))
                            }}
                        
                    }
                   
                    .toolbar {
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Done", action: {})
                        }
                        
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancel", action: {})
                        }
                    }
                    .cornerRadius(25)
                    .foregroundStyle(Color("Color 1"))
                    
                }
                .padding()
                
                }
            .presentationDetents([.height(250), .fraction(20), .medium, .large])
            
                .edgesIgnoringSafeArea(.all)
        }
    }
    
    struct alarmSheet_Previews: PreviewProvider {
        static var previews: some View {
            alarmSheet()
        }
    }
}
