//
//  ContentView.swift
//  UserDefaults
//
//  Created by Shah Md Imran Hossain on 14/4/23.
//

import SwiftUI

// user defaults in standard way for simple data
struct ContentView: View {
    @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")

    var body: some View {
        Button("Tap Count \(tapCount)") {
            tapCount += 1
            UserDefaults.standard.set(tapCount, forKey: "Tap")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
