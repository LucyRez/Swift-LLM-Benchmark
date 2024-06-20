//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write code for a view that shows and hides a text label with a slide transition when a button is tapped.

import SwiftUI
import PlaygroundSupport

//struct SlidingTextView: View {
//    @State private var isVisible: Bool = false
//
//    var body: some View {
//        VStack {
//            Button(action: {
//                withAnimation(.easeInOut(duration: 0.5)) {
//                    isVisible.toggle()
//                }
//            }) {
//                Text("Toggle Text")
//                    .padding()
//                    .background(Color.blue)
//                    .foregroundColor(.white)
//                    .cornerRadius(8)
//            }
//
//            if isVisible {
//                Text("Hello, SwiftUI!")
//                    .font(.largeTitle)
//                    .padding()
//                    .transition(.slide)
//            }
//        }
//    }
//}

struct ContentView: View {
    @State private var showLabel = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button(action: {
                self.showLabel = !self.showLabel
            }) {
                Text("Toggle Label")
            }
            
            if showLabel {
                Text("Hello, World!")
                    .transition(.slide)
            }
        }
    }
}

let view = ContentView()
PlaygroundPage.current.setLiveView(view)







