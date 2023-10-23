//
//  ContentView.swift
//  Word Play
//
//  Created by Nicholas Papierniak on 10/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var words = Words()
    var body: some View {
        NavigationView {
            VStack {
                Text ("Please enter the requested words below")
                HStack {
                    CustomTextField(placeholder: "Noun", variable: $words.noun0)
                    CustomTextField(placeholder: "Noun", variable: $words.noun1)
                    CustomTextField (placeholder: "Noun(plural)", variable: $words.pluralnoun)
                }
                HStack {
                    CustomTextField(placeholder: "Name", variable: $words.name)
                    CustomTextField(placeholder: "Verb(ing)", variable: $words.verb_ing0)
                    CustomTextField(placeholder: "Verb", variable: $words.verb)
                }
                HStack {
                    CustomTextField(placeholder: "Verb(past tense)", variable: $words.verb_pasttense)
                    CustomTextField(placeholder: "Verb(ing)", variable: $words.verb_ing1)
                    CustomTextField (placeholder: "Any Liquid", variable: $words.liquid)
                }
                HStack {
                    CustomTextField(placeholder: "Adjective", variable: $words.adjective0)
                    CustomTextField(placeholder: "Adjective", variable: $words.adjective1)
                }
                HStack {
                    CustomTextField(placeholder: "Type of Bird", variable: $words.typeofbird)
                    CustomTextField(placeholder: "Room in a House", variable: $words.room)
                    
                }
                HStack{
                    CustomTextField(placeholder: "Body part(Plural)", variable: $words.bodypart)
                }
                Spacer ()
                NavigationLink("Next", destination: StoryView(words: words))
            }
        }
        .navigationTitle("Word Play")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CustomTextField: View {
    let placeholder : String
    let variable : Binding<String>
    var body: some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
}

struct Words {
    var noun0 = ""
    var noun1 = ""
    var pluralnoun = ""
    var name = ""
    var verb_ing0 = ""
    var verb = ""
    var verb_ing1 = ""
    var verb_pasttense = ""
    var liquid = ""
    var adjective0 = ""
    var adjective1 = ""
    var typeofbird = ""
    var room = ""
    var bodypart = ""
}

