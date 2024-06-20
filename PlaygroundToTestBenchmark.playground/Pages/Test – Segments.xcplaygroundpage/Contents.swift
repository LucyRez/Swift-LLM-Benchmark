//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write SwiftUI code for a segmented control that displays different text based on the selected segment.

import SwiftUI
import PlaygroundSupport

struct SegmentedControlView: View {
    @State private var selectedSegment = 0
    let segments = ["First", "Second", "Third"]
    
    var body: some View {
        VStack {
            Picker("Options", selection: $selectedSegment) {
                ForEach(0..<segments.count) { index in
                    Text(segments[index]).tag(index)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            Text("Selected: \(segments[selectedSegment])")
                .font(.largeTitle)
                .padding()
        }
    }
}

let view = SegmentedControlView()
PlaygroundPage.current.setLiveView(view)

