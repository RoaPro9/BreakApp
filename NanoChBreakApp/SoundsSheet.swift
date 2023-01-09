//
//  SoundsSheet.swift
//  NanoChBreakApp
//
//  Created by Roa Moha on 16/06/1444 AH.
//

import SwiftUI


struct SoundsSheet: View {
    @State private var showingSoundsSheet = false
    
    var body: some View {
     
            Button {
                showingSoundsSheet.toggle()
                
            } label: {
                Image(systemName: "music.note")
                    .foregroundColor(Color.white)
                
                
                
                
            } .buttonStyle(.bordered)
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
                            Text("sound 1")
                            Text("sound 2")
                            Text("sound 3")
                            
                            
                            
                        }
                       
                        .toolbar {
                            ToolbarItem(placement: .confirmationAction) {
                                Button("Done", action: {})
                            }
                            
//                            ToolbarItem(placement: .cancellationAction) {
//                                Button("Cancel", action: {})
//                            }
                        }
                        
                        .cornerRadius(25)
                        .foregroundStyle(Color("Color 1"))
                        
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
