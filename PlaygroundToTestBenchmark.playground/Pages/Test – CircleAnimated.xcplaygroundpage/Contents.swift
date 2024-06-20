//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write code for a circle that changes color with a fade transition when tapped.


import SwiftUI

struct ColorChangingCircleView: View {
    @State private var isRed: Bool = true
    
    var body: some View {
        Circle()
            .fill(isRed ? Color.red : Color.blue)
            .frame(width: 100, height: 100)
            .onTapGesture {
                withAnimation(.easeInOut(duration: 0.5)) {
                    isRed.toggle()
                }
            }
    }
}

