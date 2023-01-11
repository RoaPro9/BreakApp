//
//  TimerView.swift
//  NanoChBreakApp
//
//  Created by Roa Moha on 16/06/1444 AH.
//

import SwiftUI
import AVKit
struct TimerView: View {
    @EnvironmentObject var viewModel : SoundViewModel
    @StateObject private var vm = ViewModel()
    @State private var vmS =  SoundsPlayer()
//    @State private var soundUrl =  SoundsSheet()
    @State var audioPlayer: AVAudioPlayer!
    private let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    private let width : Double = 250
   // let sound = Bundle.main.path(forResource: "\(self.viewModel.sound.url)", ofType: "mp3")

   // self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
    
    var body: some View {
        
        VStack{
            
          //  AVAudioPlayer(contentsOf: URL(fileURLWithPath: viewModel.sound))
                    
                Text ("\(vm.time)")
                .foregroundColor(.white)
                
                    .frame(width: width)

                    .font(.system(size: 60 , weight: .medium, design: .rounded))
                    .alert("You Did It Well Done!", isPresented: $vm.showingAlert ) {
                        Button("Great", role: .cancel ){}
                        
                    }
            Slider(value: $vm.minutes, in: 1 ... 10 , step : 1)
                .padding()
                .frame(width: width)
                .disabled(vm.isActive)
                .animation(.easeInOut, value: vm.isActive)
            HStack(spacing: 50){
                Button("Start"){
                    vm.start(minutes: vm.minutes)
                    viewModel.playSound()
                   // self.audioPlayer.play()
//                    self.vmS.player.play()
//                    self.vmS.playing = true
                    
                }.buttonStyle(.bordered)
                .tint(Color("Color 9"))
                .foregroundColor(.white)
                Button("Reset"){
                    vm.reset()
                    
                    self.viewModel.audioPlayer?.stop()
//
                    
                } .foregroundColor(Color("Color 9"))
                .buttonStyle(.bordered)
                .tint(.white)
               
               
//                Button("Reset" , action : vm.reset)
//                    .tint(Color("Color 9"))
                    //.frame(width: width)
                    
            }
            
        }.onAppear{
          
//            let sound = Bundle.main.path(forResource: "\(self.viewModel.sound.url)", ofType: "mp3")
//
//            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
////
////
        }
        
        .onReceive(timer){
            _ in vm.updateCountDown()
           
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
