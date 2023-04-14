//
//  ContentView.swift
//  UserDefaults
//
//  Created by Shah Md Imran Hossain on 14/4/23.
//

import SwiftUI

struct User: Codable {
    let firstName: String
    let lastName: String
}

struct ContentView: View {
    @State private var user = User(firstName: "Imran", lastName: "Hossain")
    
    var body: some View {
        Button("Save user") {
            let encoder = JSONEncoder()
            
            guard let data = try? encoder.encode(user) else {
                print("user encoding failed")
                return
            }
            
            UserDefaults.standard.set(data, forKey: "UserData")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
