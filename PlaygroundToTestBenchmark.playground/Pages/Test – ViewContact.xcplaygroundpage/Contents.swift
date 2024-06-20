//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write code for a contact us screen with text fields for name and message, and a send button.

import SwiftUI
import PlaygroundSupport


struct ContactUsScreen: View {
    @State private var name: String = ""
    @State private var message: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Contact Us")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 40)
            
            TextField("Your Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 40)
            
            TextEditor(text: $message)
                .frame(height: 200)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
                .padding(.horizontal, 40)
            
            Button(action: {
                // Handle send action
            }) {
                Text("Send")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .cornerRadius(10)
                    .padding(.horizontal, 40)
            }
            
            Spacer()
        }
        .padding()
    }
}
