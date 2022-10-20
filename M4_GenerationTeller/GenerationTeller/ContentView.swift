//
//  ContentView.swift
//  GenerationTeller
//
//  Created by William Lumley on 20/10/2022.
//

import SwiftUI

struct ContentView: View {

    @State var yearString = ""
    @State var labelText = ""

    var body: some View {
        VStack {
            TextField("Enter year of birth", text: $yearString) {
                guard let year = Int(yearString) else {
                    labelText = "Please enter a valid number"
                    return
                }

                switch year {
                case 1946...1964:
                    labelText = "You're a baby boomer!"
                case 1965...1976:
                    labelText = "You're a GenX"
                case 1977...1995:
                    labelText = "You're a Millenial"
                case 1996...2015:
                    labelText = "You're a GenZ"
                default:
                    labelText = "We can't tell which generation you're in :("
                }
            }
                .textFieldStyle(.roundedBorder)
                .padding()

            Text(labelText)
                .multilineTextAlignment(.center)
                .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
