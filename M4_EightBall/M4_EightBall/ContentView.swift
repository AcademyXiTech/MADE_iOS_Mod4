//
//  ContentView.swift
//  M4_EightBall
//
//  Created by Cameron Edwards on 29/9/22.
//

import SwiftUI

struct ContentView: View {

    let advices = [
        "It is certain",
        "It is decidedly so",
        "Without a doubt",
        "Reply hazy, try again",
        "My sources say no",
    ]
    
    @State var randomNum = 0
    @State var advice = ""

    var body: some View {

        VStack {
        
            ZStack {
                Image("eightball")
                    .resizable()
                    .aspectRatio(contentMode: .fit)

                Text("\(randomNum)")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
            }
            .padding()

            Button("Shake the ball!") {
                randomNum = Int.random(in: 0..<advices.count - 1)
                advice = advices[randomNum]
            }
            .padding()

            Text(advice)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
