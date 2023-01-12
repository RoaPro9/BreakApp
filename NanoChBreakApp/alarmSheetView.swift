//
//  alarmSheetView.swift
//  NanoChBreakApp
//
//  Created by Roa Moha on 17/06/1444 AH.
//

//
//  alarmSheet.swift
//  NanoChBreakApp
//
//  Created by Roa Moha on 16/06/1444 AH.
//


    

import SwiftUI

struct alarmSheetView: View {
    @State private var showingAlarmSheet = false
    var colors = ["Hourly", "Daily", "Weekdays", "Weekends", "Weekly", "Never"]
    @State private var selectedColor = "Hourly"
    @State private var wakeUp = Date.now
    @ObservedObject var notificationManager: NotificationManger
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        
            NavigationView{
                VStack {
  
                    List{
                        
                        DatePicker("Time", selection: $wakeUp, displayedComponents: .hourAndMinute  ).foregroundColor(.white)
                            
                        
//                        Picker("Repeat", selection: $selectedColor) {
//                            ForEach(colors, id: \.self) {
//                                Text($0).foregroundColor(.white)
//                            }.foregroundColor(.white)
//                            
//                        }
//                        
                    }
                    .onDisappear {
                        notificationManager.reloadLocalNotification()
                    }
                   
                    .toolbar {
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Create", action: {
                               
                                let dateComponents = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
                                guard let hour = dateComponents.hour, let minute = dateComponents.minute else { return }
                                notificationManager.createLocalNotification(title: "Take A Break", hour: hour, minute: minute) { error in
                                    if error == nil {
                                        DispatchQueue.main.async {
                                            dismiss()
                                           // self.showingAlarmSheet = false
                                        }
                                    }
                                }
             
                            }) .foregroundStyle(.white)
//                            Button {
//                                                
//                            } label: {
//                                                   Text("Create")
//                                    .foregroundColor(.white)
//                                                       .fontWeight(.semibold)
//                                                       .frame(maxWidth: .infinity)
//                                                       .contentShape(Rectangle())
//                                               }
                            
                            
                            
                            
//                            Button("Done", action: {})
                      }
//
//                        ToolbarItem(placement: .cancellationAction) {
//                            Button("Cancel", role : .cancel , action: { showingAlarmSheet = false})
//                        }
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


struct alarmSheetView_Previews: PreviewProvider {
    static var previews: some View {
        alarmSheetView(notificationManager: NotificationManger()
        )
    }
}
