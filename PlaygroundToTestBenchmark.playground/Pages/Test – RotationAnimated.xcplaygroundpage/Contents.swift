//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write code for a rectangle that rotates 360 degrees when tapped.

import SwiftUI

struct RotatingRectangleView: View {
    @State private var rotation: Double = 0.0
    
    var body: some View {
        Rectangle()
            .fill(Color.green)
            .frame(width: 100, height: 100)
            .rotationEffect(.degrees(rotation))
            .onTapGesture {
                withAnimation(.easeInOut(duration: 1.0)) {
                    rotation += 360
                }
            }
    }
}
