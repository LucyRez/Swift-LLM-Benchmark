//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write code for a text label that moves horizontally across the screen when tapped.

import SwiftUI

struct MovingTextView: View {
    @State private var offset: CGFloat = 0.0
    
    var body: some View {
        Text("Move me")
            .font(.largeTitle)
            .padding()
            .background(Color.yellow)
            .cornerRadius(8)
            .offset(x: offset)
            .onTapGesture {
                withAnimation(.easeInOut(duration: 1.0)) {
                    offset = offset == 0.0 ? 200.0 : 0.0
                }
            }
    }
}
