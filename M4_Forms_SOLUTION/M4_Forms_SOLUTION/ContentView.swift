//
//  ContentView.swift
//  M4_Forms_SOLUTION
//
//  Created by Lucy Edwards on 16/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var email = ""
    @State private var bDay = Date()
    @State private var accepted = false
    @State private var themeSelected = "Light"
    @State private var language = "English"
    
    var themeOptions = ["Light", "Dark", "Bright"]
    var languageOptions = ["English", "Italian", "Indonesian", "Spanish"]
    
    var body: some View {
        
        ZStack {
            
            NavigationView {
                Form {
                    Section("Contact") {
                        TextField("Email", text: $email)
                        DatePicker("Enter your Birthday", selection: $bDay, displayedComponents: .date)
                    }
                    Section("Terms and Conditions") {
                        Toggle(isOn:$accepted) {
                            Text("Do you accept the Terms & Conditions?")
                        }
                    }
                    Section(header: Text("Language Selection")) {
                        Picker("Language", selection: $language) {
                            ForEach(languageOptions, id:\.self) {
                                Text($0)
                            }
                        }
                    }
                    Section(header: Text("Colour Theme"), footer: Text("Choose your theme (light or dark etc)")) {
                        Picker("Please choose your theme", selection: $themeSelected) {
                            ForEach(themeOptions, id:\.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(.segmented)
                    }
                }
                .navigationTitle("My App Settings")
            }
            VStack {
                Spacer()
                Image("flower")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 75, height:75)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
