//
//  SoundsSheet.swift
//  NanoChBreakApp
//
//  Created by Roa Moha on 16/06/1444 AH.
//

import SwiftUI


struct SoundsSheet: View {
    @EnvironmentObject var viewModel : SoundViewModel
    @State private var showingSoundsSheet = false
    @State  var SUrl : String = "sound5"
    //@State var sounds : [Sounds] = []
    var sounds = [
        Sounds(title: "Sound1", url: "sound1", time: "1:00"),
        Sounds(title: "Sound2", url: "sound2", time: "3:00"),
        Sounds(title: "Sound3", url: "sound3", time: "12:00"),
        Sounds(title: "Sound4", url: "sound4", time: "1:00"),
        Sounds(title: "Sound5", url: "sound5", time: "5:00")
        
    ]
    var body: some View {
        
        Button {
            showingSoundsSheet.toggle()
            
        } label: {
            Image(systemName: "music.note")
                .foregroundColor(Color.white)
            
            
            
            
    }
//                .buttonStyle(.bordered)
            .sheet(isPresented: $showingSoundsSheet) {
                NavigationView{
                    VStack {
                        //                        HStack(spacing : 100){
                        //                            Text("")
                        //                            Text("Sounds")
                        //                                .font(.headline).foregroundColor(Color("Color"))
                        //
                        //                            Button(role: .none) {
                        //                            } label: {
                        //                                Text("Done")
                        //                            }.foregroundColor(Color("Color 8"))
                        //                        }
                        
                        
                        
                        List{
                            //                             Text("list")
                            
                            ForEach(sounds) { sound in
                                //                                    Text(sound.title)
                                Button(sound.title){
                                    viewModel.sound = sound
                                    viewModel.playSound()
//                                    self.SUrl = sound.url
//                                    print(self.SUrl,"😀")
                                    
                                    //
                                    
                                }
                                .tint(.white)
                                
                                
                                
                            }}
                            .cornerRadius(25)
                            .foregroundStyle(.white)
                            .toolbar {
                                ToolbarItem(placement: .confirmationAction) {
                                    Button("Done", action: {
                                        showingSoundsSheet = false
                                    })   .foregroundStyle(.white)
                                }
                                
                                //                            ToolbarItem(placement: .cancellationAction) {
                                //                                Button("Cancel", action: {})
                                //                            }
                            }
                            
                            
                            
                        }.padding()
                        
                        
                        
                    }.presentationDetents([.height(250), .fraction(20), .medium, .large])
                    
                        .edgesIgnoringSafeArea(.all)
                    
                }
            }
    }
    
    struct SoundsSheet_Previews: PreviewProvider {
        static var previews: some View {
            SoundsSheet()
        }
    }
    

