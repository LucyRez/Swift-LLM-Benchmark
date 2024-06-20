//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write SwiftUI code for a registration screen with text fields for username, email, and password, a register button, and a picker to select the user's gender.

import SwiftUI

struct RegistrationScreen: View {
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var selectedGender = "Male"
    let genders = ["Male", "Female", "Other"]
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Register")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 40)
            
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 40)
            
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 40)
            
            Picker("Gender", selection: $selectedGender) {
                ForEach(genders, id: \.self) { gender in
                    Text(gender)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal, 40)
            
            Button(action: {
                // Handle registration action
            }) {
                Text("Register")
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

