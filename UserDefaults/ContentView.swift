//
//  ContentView.swift
//  UserDefaults
//
//  Created by Shah Md Imran Hossain on 14/4/23.
//

import SwiftUI

struct ContentView: View {
    // @AppStorage is another property wrapper of swiftUI
    // it works like @State
    // it uses userdefault underline
    // so swiftui lift the heavy weights for us
    @AppStorage("TapCount") private var tapCount = 0
    
    var body: some View {
        Button("Tap Count \(tapCount)") {
            tapCount += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
