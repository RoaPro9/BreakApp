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
    @Published private(set) var authorizationStatus : UNAuthorizationStatus?
    
    func reloadAuthorizationStatus (){
        
        UNUserNotificationCenter.current().getNotificationSettings{
             setting in
            DispatchQueue.main.async {
                self.authorizationStatus = setting.authorizationStatus
            }
            
            
            
        }
        
    }
    func requestAuthorization (){
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert , .badge , .sound])
        { isGranted , _ in
            DispatchQueue.main.async {
                self.authorizationStatus = isGranted ? .authorized : .denied
                
            }
             
            }
            
            
            
        }
    func reloadLocalNotification (){
        
        UNUserNotificationCenter.current().getPendingNotificationRequests
        { notifications in
            DispatchQueue.main.async {
                self.notifications = notifications
        }
             
            }
            
            
            
        }
        
    }
    



