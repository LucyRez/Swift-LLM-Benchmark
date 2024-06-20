//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write code for a text field with a secure entry toggle button to show or hide the password.
                                                            
import SwiftUI

struct SecureTextFieldView: View {
    @State private var password: String = ""
    @State private var isSecure: Bool = true
    
    var body: some View {
        VStack {
            HStack {
                if isSecure {
                    SecureField("Password", text: $password)
                } else {
                    TextField("Password", text: $password)
                }
                Button(action: {
                    isSecure.toggle()
                }) {
                    Image(systemName: isSecure ? "eye.slash" : "eye")
                        .foregroundColor(.gray)
                }
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
            .padding()
        }
    }
}

