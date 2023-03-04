//
//  ContentView.swift
//  LetterPlay
//
//  Created by Dimi Chakarov on 04/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.opacity(0.8).ignoresSafeArea()
            SingleWord(word: "PLAY")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
