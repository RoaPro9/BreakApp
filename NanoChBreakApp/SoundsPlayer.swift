//
//  SoundsPlayer.swift
//  NanoChBreakApp
//
//  Created by Roa Moha on 17/06/1444 AH.
//

import SwiftUI
import AVKit


struct SoundsPlayer: View {
    @State var data : Data = .init(count: 0)
    @State var title = ""
    @State var player : AVAudioPlayer!
    @State var playing = false
    @State var width : CGFloat = 0
    @State var songs = ["black","bad"]
    @State var current = 0
    @State var finish = false
    @State var del = AVdelegate()

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    func getData(){


        let asset = AVAsset(url: self.player.url!)

        for i in asset.commonMetadata{

            if i.commonKey?.rawValue == "artwork"{

                let data = i.value as! Data
                self.data = data
            }

            if i.commonKey?.rawValue == "title"{

                let title = i.value as! String
                self.title = title
            }
        }
    }

    func ChangeSongs(){

        let url = Bundle.main.path(forResource: self.songs[self.current], ofType: "mp3")

        self.player = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: url!))

        self.player.delegate = self.del

        self.data = .init(count: 0)

        self.title = ""

        self.player.prepareToPlay()
        self.getData()

        self.playing = true

        self.finish = false

        self.width = 0

        self.player.play()


    }
}

//func playsouds () {
//
//    let url = Bundle.main.path(forResource: self.songs[self.current], ofType: "mp3")
//
//    self.player = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: url!))
//
//    self.player.delegate = self.del
//
//    self.player.prepareToPlay()
//    self.getData()
//
//    Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (_) in
//
//        if self.player.isPlaying{
//
//            let screen = UIScreen.main.bounds.width - 30
//
//            let value = self.player.currentTime / self.player.duration
//
//            self.width = screen * CGFloat(value)
//        }
//    }
//
//    NotificationCenter.default.addObserver(forName: NSNotification.Name("Finish"), object: nil, queue: .main) { (_) in
//
//        self.finish = true
//    }
//}
class AVdelegate : NSObject,AVAudioPlayerDelegate{

    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {

        NotificationCenter.default.post(name: NSNotification.Name("Finish"), object: nil)
    }
    struct SoundsPlayer_Previews: PreviewProvider {
        static var previews: some View {
            SoundsPlayer()
        }

    }
}
