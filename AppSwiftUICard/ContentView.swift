//
//  ContentView.swift
//  AppSwiftUICard
//
//  Created by grace on 2022/3/27.
//

import SwiftUI

struct ContentView: View {
//    var emojis = ["👾", "🎨"， "🤯", "🦊", "😀", "🍟", "🐣", "🌭", "🔍", "🏓", "🍕", "🧩", "🚀", "📌", "⛩️", "🥰", "😈", "🤩", "🗽",  "🧸", "🎾"]
    
    @State var emojisCount = 20
    var body: some View {
        VStack {
            CardView(context: "👍").frame(width: 90, height: 120, alignment: .center)
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

struct CardView: View {
    var context: String
    @State var isFaceUp = false
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp == true {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(context).font(.largeTitle)
            } else {
                shape.fill()
            }

        }.onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
