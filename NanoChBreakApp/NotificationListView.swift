//
//  NotificationListView.swift
//  NanoChBreakApp
//
//  Created by Roa Moha on 16/06/1444 AH.
//

import SwiftUI

struct NotificationListView: View {
    @StateObject private var notificationManeger = NotificationManger()
    var body: some View {
        List (notificationManeger.notifications, id: \.identifier){
             notification in
            Text (notification.content.title)
                .fontWeight(.semibold)
            
            
            
        }
        .listStyle(InsetListStyle())
        .navigationTitle("Notification")
            .onAppear(perform: notificationManeger.reloadAuthorizationStatus)
            .onChange(of: notificationManeger.authorizationStatus){
                authorizationStatus in
                switch authorizationStatus{
                case .notDetermined : // request
                    notificationManeger.requestAuthorization()
                case .authorized :
                    notificationManeger.reloadLocalNotification()
                default: break;
                    
                    
                    
                }
                
            }
    }
}

struct NotificationListView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationListView()
    }
}
