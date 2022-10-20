//
//  ContentView.swift
//  M4_EightBall_SOLUTION
//
//  Created by Lucy Edwards on 16/10/2022.
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
    @State var colour = Color.green
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
                randomNum = Int.random(in: 0..<advices.count)
                advice = advices[randomNum]

                if randomNum < 3 {
                    colour = .green
                } else if randomNum < 4 && randomNum > 2 {
                    colour = .yellow
                } else if randomNum > 3 {
                    colour = .red
                }
            }
            .font(.title)
            .buttonStyle(.borderedProminent)
            .padding()

            Text(advice)
                .font(.largeTitle)
                .padding()
                .background(colour)
                .cornerRadius(15)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
