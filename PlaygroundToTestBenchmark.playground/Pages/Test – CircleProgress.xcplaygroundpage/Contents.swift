//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write SwiftUI code for a circular progress bar that fills based on a percentage value.

import SwiftUI

struct CircularProgressBarView: View {
    @State private var progress: CGFloat = 0.7
    
    var body: some View {
        ZStack {
            Circle()
                .trim(from: 0.0, to: progress)
                .stroke(Color.blue, lineWidth: 10)
                .rotationEffect(Angle(degrees: -90))
                .frame(width: 100, height: 100)
            
            Text("\(Int(progress * 100))%")
                .font(.title)
        }
        .padding()
    }
}

