//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write code for a slider that updates a text label with the current value.

import SwiftUI
import PlaygroundSupport

struct VerticalSliderView: View {
    @State private var sliderValue: Double = 0.0
    
    var body: some View {
        VStack {
            Slider(value: $sliderValue, in: 0...100, step: 1)
                .frame(width: 300)
                .padding()
            
            Text("Value: \(Int(sliderValue))")
                .font(.title)
                .padding()
        }
    }
}

let view = VerticalSliderView()
PlaygroundPage.current.setLiveView(view)
