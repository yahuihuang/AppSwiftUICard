//
//  ContentView.swift
//  AppSwiftUICard
//
//  Created by grace on 2022/3/27.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["👾", "🎨"]
    
    @State var emojisCount = 20
    var body: some View {
        VStack {
            Text("\(emojisCount)")
                .padding()
            
            Spacer()
            HStack {
                remove
                Spacer()
                add
            }.font(.largeTitle)
                .padding(.horizontal, 20)
        }
    }
    
    // Button
    var remove: some View {
        Button {
            if emojisCount > 1 {
                emojisCount -= 1
            }
        } label: {
            Image(systemName: "minus.circle")
        }
    }
    
    var add: some View {
        Button {
            if emojisCount < 20 {
                emojisCount += 1
            }
        } label: {
            Image(systemName: "plus.circle")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
