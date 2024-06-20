//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write code for a button with a rounded rectangle shape, a gradient background, and a shadow.

import SwiftUI

struct GradientButtonView: View {
    var buttonText: String
    var body: some View {
        Button(action: {
            // Action here
        }) {
            Text(buttonText)
                .foregroundColor(.white)
                .padding()
                .background(LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(10)
                .shadow(radius: 5)
        }
    }
}

