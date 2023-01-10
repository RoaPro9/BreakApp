//
//  NanoChBreakAppApp.swift
//  NanoChBreakApp
//
//  Created by Roa Moha on 15/06/1444 AH.
//

import SwiftUI

@main
struct NanoChBreakAppApp: App {
    @StateObject var vm = SoundViewModel()
    var body: some Scene {
        WindowGroup {
            LaunchScreen()
                .environmentObject(vm)
        }
    }
}
