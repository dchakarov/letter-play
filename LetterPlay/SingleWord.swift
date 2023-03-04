//
//  SingleWord.swift
//  LetterPlay
//
//  Created by Dimi Chakarov on 04/03/2023.
//

import SwiftUI

struct SingleWord: View {
    @State private var isAnimating = false
    private let letters: [Character]

    init(word: String) {
        self.letters = Array(word)
    }
    
    var body: some View {
        HStack(spacing: 20) {
            ForEach(letters.indices, id: \.self) { index in
                let letter = letters[index]
                SingleLetter(letter: letter,
                             backgroundColor: .brown,
                             letterColor: .white)
                .border(.orange, width: isAnimating ? 5 : 0)
                .rotationEffect(Angle(degrees: isAnimating ? angles(for: index).from : angles(for: index).to))
                .scaleEffect(isAnimating ? scale(for: index).from : scale(for: index).to)
                .animation(.linear(duration: 1).repeatForever(autoreverses: true), value: isAnimating)
            }
        }
        .onAppear {
            isAnimating = true
        }
    }
    
    private func angles(for index: Int) -> (from: Double, to: Double) {
        let firstAngle = Double.random(in: -22 ... -18)
        let secondAngle = Double.random(in: 18 ... 22)
        return index.isMultiple(of: 2) ? (from: firstAngle, to: secondAngle) : (from: secondAngle, to: firstAngle)
    }
    
    private func scale(for index: Int) -> (from: Double, to: Double) {
        let firstScale = Double.random(in: 0.85 ... 0.9)
        let secondScale = Double.random(in: 1.1 ... 1.15)
        return index.isMultiple(of: 2) ? (from: firstScale, to: secondScale) : (from: secondScale, to: firstScale)
    }
}

struct SingleWord_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.opacity(0.8).ignoresSafeArea()
            SingleWord(word: "PLAY")            
        }
    }
}
