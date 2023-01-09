//
//  NotificationManger.swift
//  NanoChBreakApp
//
//  Created by Roa Moha on 16/06/1444 AH.
//


import Foundation
import UserNotifications
final class NotificationManger : ObservableObject {
    
    @Published private(set) var notifications : [UNNotificationRequest] = []
    
    
}

//struct NotificationManger: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct NotificationManger_Previews: PreviewProvider {
//    static var previews: some View {
//        NotificationManger()
//    }
//}
