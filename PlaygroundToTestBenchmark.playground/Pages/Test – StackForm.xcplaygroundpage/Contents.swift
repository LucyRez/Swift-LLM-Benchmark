//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write code for a VStack containing two text fields and a button below them.

import SwiftUI

struct FormView: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    
    var body: some View {
        VStack {
            TextField("First Name", text: $firstName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextField("Last Name", text: $lastName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {
                // Action here
            }) {
                Text("Submit")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            .padding()
        }
    }
}


