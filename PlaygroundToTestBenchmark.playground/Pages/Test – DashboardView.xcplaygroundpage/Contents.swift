//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write code for a dashboard screen with a greeting message, a list of recent activities, and a button to refresh the data.

import SwiftUI


struct DashboardScreen: View {
    @State private var recentActivities: [String] = ["Activity 1", "Activity 2", "Activity 3"]
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Welcome Back!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 40)
            
            Text("Recent Activities")
                .font(.headline)
                .padding(.top, 20)
            
            List(recentActivities, id: \.self) { activity in
                Text(activity)
            }
            .frame(height: 200)
            
            Button(action: {
                // Handle refresh action
            }) {
                Text("Refresh")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.horizontal, 40)
            }
            
            Spacer()
        }
        .padding()
    }
}

