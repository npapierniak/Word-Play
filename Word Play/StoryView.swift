//
//  StoryView.swift
//  Word Play
//
//  Created by Nicholas Papierniak on 10/13/23.
//

import SwiftUI

struct StoryView: View {
    let words : Words
    var body: some View {
        Text(writeStory())
        
    }
    func writeStory() -> String
    {
        return "It was a \(words.adjective0), cold November day. I woke up to the \(words.adjective1) smell of \(words.typeofbird) roasting in the \(words.room) downstairs. I \(words.verb_pasttense) down the stairs to see if I could help \(words.verb) the dinner. My mom said, 'See if \(words.name) needs a fresh \(words.noun0). So I carried a tray of glasses full of \(words.liquid) into the \(words.verb_ing1) room. When I got there, I couldn't believe my \(words.bodypart)! There were \(words.pluralnoun) \(words.verb_ing0) on the \(words.noun1)!"
        
        
    }

}


struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(words: Words())
    }
}

