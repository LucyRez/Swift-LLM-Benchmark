//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write code for a button that scales up and down when tapped.

import SwiftUI

struct ScalableButtonView: View {
    @State private var scale: CGFloat = 1.0
    
    var body: some View {
        Button(action: {
            withAnimation(.easeInOut(duration: 0.3)) {
                scale = scale == 1.0 ? 1.2 : 1.0
            }
        }) {
            Text("Tap me")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
        }
        .scaleEffect(scale)
    }
}

