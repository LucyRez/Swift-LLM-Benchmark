//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write code for a toggle switch that changes the background color of the view.

import SwiftUI

struct ToggleBackgroundColorView: View {
    @State private var isOn: Bool = false
    
    var body: some View {
        ZStack {
            isOn ? Color.green : Color.red
            VStack {
                Toggle(isOn: $isOn) {
                    Text("Change Background Color")
                }
                .padding()
                .toggleStyle(SwitchToggleStyle(tint: .blue))
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

