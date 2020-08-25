//
//  ContentView.swift
//  WordScramble
//
//  Created by Vadym Hordov on 2020-08-24.
//  Copyright © 2020 Vadym Hordov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let players = ["Vova", "Vadya", "Dima", "Ilya"]
    
    var body: some View {
        VStack {
            List {
                Section(header: Text("Section 1")) {
                    Text("Hello world now!")
                }
                Section(header: Text("Section 2")) {
                    ForEach(0..<5) {
                        Text("Hello, World \($0)")
                    }
                }
                Section(header: Text("Section 3")) {
                    Text("Hello world after!")
                }
            }
            .listStyle(GroupedListStyle())
            List(players, id: \.self) {
                Text($0)
            }
            List {
                Section(header: Text("Players")) {
                    ForEach(players, id: \.self) {
                        Text($0)
                    }
                }
            }
            .listStyle(GroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
