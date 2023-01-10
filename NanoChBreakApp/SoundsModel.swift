//
//  SoundsModel.swift
//  NanoChBreakApp
//
//  Created by Roa Moha on 17/06/1444 AH.
//

import Foundation

struct Sounds  : Identifiable{
    
  
    
    var id = UUID()
    var title : String 
    var url : String
    var time : String
    
     
    
    
}
var sounds = [
    Sounds(title: "Sound1", url: "sound1", time: "1:00"),
    Sounds(title: "Sound2", url: "sound2", time: "3:00"),
    Sounds(title: "Sound3", url: "sound3", time: "12:00"),
    Sounds(title: "Sound4", url: "sound4", time: "1:00"),
    Sounds(title: "Sound5", url: "sound5", time: "5:00")
  
]
