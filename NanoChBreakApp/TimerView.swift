//
//  TimerView.swift
//  NanoChBreakApp
//
//  Created by Roa Moha on 16/06/1444 AH.
//

import SwiftUI

struct TimerView: View {
    @StateObject private var vm = ViewModel()
    private let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    private let width : Double = 250
    
    var body: some View {
        VStack{
            
                
                    
                Text ("\(vm.time)")
                .foregroundColor(.white)
                
                    .frame(width: width)
//                    .background(.thinMaterial)
//                    .clipShape(
//                        Circle( ) .frame(width :width))
//                    .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
//                    .overlay(Circle()
//                        .stroke(Color.gray,lineWidth: 4))
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
                    
                }.tint(.white)
                .disabled(vm.isActive)
                Button("Reset" , action : vm.reset)
                    .tint(Color("Color 9"))
                    //.frame(width: width)
                    
            }
            
        }.onReceive(timer){
            _ in vm.updateCountDown()
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
