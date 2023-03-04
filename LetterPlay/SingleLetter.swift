//
//  SingleLetter.swift
//  LetterPlay
//
//  Created by Dimi Chakarov on 04/03/2023.
//

import SwiftUI

struct SingleLetter: View {
    let letter: Character
    let backgroundColor: Color
    let letterColor: Color
    
    var body: some View {
        Text(String(letter))
            .foregroundColor(letterColor)
            .font(.title3)
            .fontWeight(.heavy)
            .frame(width: 44, height: 44)
            .background(backgroundColor)
    }
}


struct SingleLetter_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            SingleLetter(letter: "W",
                         backgroundColor: .brown,
                         letterColor: .white)
            .border(.orange)
            SingleLetter(letter: "O",
                         backgroundColor: .brown,
                         letterColor: .white)
            .border(.orange)
            SingleLetter(letter: "R",
                         backgroundColor: .brown,
                         letterColor: .white)
            .border(.orange)
            SingleLetter(letter: "D",
                         backgroundColor: .brown,
                         letterColor: .white)
            .border(.orange)
        }
    }
}
