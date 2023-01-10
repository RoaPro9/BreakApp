//
//  ViewModel.swift
//  NanoChBreakApp
//
//  Created by Roa Moha on 17/06/1444 AH.
//

import Foundation
import AVFoundation

final class SoundViewModel: ObservableObject{
    @Published var sound : Sounds =  Sounds(title: "Sound5", url: "sound5", time: "5:00")
    
    
    var soundString : String{
        return Bundle.main.path(forResource: "\(sound.url)", ofType: "mp3") ?? ""
    }
    
    
    
    var audioPlayer: AVAudioPlayer?
    
    func playSound() {
        if let path = Bundle.main.path(forResource: "\(sound.url)", ofType: "mp3") {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                audioPlayer?.play()
            } catch {
                print("ERROR")
            }
        }
    }
}
