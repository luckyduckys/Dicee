//
//  ContentView.swift
//  Dicee
//
//  Created by Mitch Mecham on 12/21/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("GreenBackground")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Image("DiceeLogo")
                Spacer()
                HStack {
                    Image("DiceOne")
                    Image("DiceOne")
                }
                Spacer()
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
