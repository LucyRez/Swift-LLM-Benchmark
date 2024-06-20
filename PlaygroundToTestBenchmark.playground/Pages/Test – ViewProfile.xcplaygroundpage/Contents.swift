//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write SwiftUI code for a profile screen that displays a user's profile picture, name, email, and a button to log out.

import SwiftUI
import PlaygroundSupport

struct ProfileScreen: View {
    var profileImage: String = "person"
    var userName: String = "John Doe"
    var userEmail: String = "john.doe@example.com"
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: profileImage)
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .padding(.top, 40)
            
            Text(userName)
                .font(.title)
                .fontWeight(.bold)
            
            Text(userEmail)
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Spacer()
            
            Button(action: {
                // Handle logout action
            }) {
                Text("Log Out")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.red)
                    .cornerRadius(10)
                    .padding(.horizontal, 40)
            }
            .padding(.bottom, 40)
        }
        .padding()
    }
}


let view = Scre()
PlaygroundPage.current.setLiveView(view)
